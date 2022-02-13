import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      );

  Stream<ProfileState> _started() async* {
    yield const ProfileState.loaded();
  }

  Stream<ProfileState> _logOut() async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        try {
          yield const ProfileState.loaded(
            isLogOutProcess: true,
          );

          await userProvider.signOut();
          yield const ProfileState.loaded(
            isLogOutProcess: false,
            isLogOutSuccses: true,
          );
        } catch (e) {
          yield const ProfileState.loaded(
            isLogOutProcess: false,
            isLogOutSuccses: false,
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
          yield const ProfileState.loaded(
            isUpdateProcess: true,
          );

          await userProvider.updateUser(appUser: appUser);
          yield const ProfileState.loaded(
            isUpdateProcess: false,
            isUpdateSucces: true,
          );
        } catch (e) {
          yield const ProfileState.loaded(
            isUpdateProcess: false,
            isUpdateSucces: false,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
