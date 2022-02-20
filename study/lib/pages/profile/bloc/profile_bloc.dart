import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/another_user.dart';
import 'package:study/models/app_user.dart';
import 'package:study/provider/account_provider.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserProvider userProvider;
  ProfileBloc({
    required this.userProvider,
  }) : super(const _Initial());
  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) =>
      event.when(
        started: _started,
        logOut: _logOut,
        update: _update,
        load: _load,
      );

  Stream<ProfileState> _started(List<String> uid, List<String> uidSub) async* {
    yield const ProfileState.initial();
    yield* _load(uid, uidSub);
  }

  Stream<ProfileState> _load(List<String> uid, List<String> uidSub) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ProfileState.loading();

        try {
          final users = await userProvider.getUsers(uid: uid);
          final usersSub = await userProvider.getUsers(uid: uidSub);

          yield ProfileState.loaded(
            users: users,
            usersSub: usersSub,
          );
        } catch (e) {
          yield const ProfileState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ProfileState> _logOut() async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        try {
          yield ProfileState.loaded(
            isLogOutProcess: true,
            users: loaded.users,
          );

          await userProvider.signOut();
          yield ProfileState.loaded(
            isLogOutProcess: false,
            isLogOutSuccses: true,
            users: loaded.users,
          );
        } catch (e) {
          yield ProfileState.loaded(
            isLogOutProcess: false,
            isLogOutSuccses: false,
            users: loaded.users,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ProfileState> _update(AppUser appUser) async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        try {
          yield ProfileState.loaded(
            isUpdateProcess: true,
            users: loaded.users,
          );

          await userProvider.updateUser(appUser: appUser);
          yield ProfileState.loaded(
            isUpdateProcess: false,
            isUpdateSucces: true,
            users: loaded.users,
          );
        } catch (e) {
          yield ProfileState.loaded(
            isUpdateProcess: false,
            isUpdateSucces: false,
            users: loaded.users,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
