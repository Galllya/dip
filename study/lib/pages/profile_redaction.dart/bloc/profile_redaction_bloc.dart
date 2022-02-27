import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/app_user.dart';
import 'package:study/provider/account_provider.dart';

part 'profile_redaction_event.dart';
part 'profile_redaction_state.dart';
part 'profile_redaction_bloc.freezed.dart';

class ProfileRedactionBloc
    extends Bloc<ProfileRedactionEvent, ProfileRedactionState> {
  final UserProvider userProvider;
  ProfileRedactionBloc({
    required this.userProvider,
  }) : super(const _Initial());
  @override
  Stream<ProfileRedactionState> mapEventToState(
    ProfileRedactionEvent event,
  ) =>
      event.when(
        started: _started,
        update: _update,
        make: _make,
      );

  Stream<ProfileRedactionState> _started() async* {
    yield const ProfileRedactionState.initial();
  }

  Stream<ProfileRedactionState> _update(
    AppUser appUser,
    Uint8List? file,
  ) async* {
    yield const ProfileRedactionState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ProfileRedactionState.loading();

        try {
          await userProvider.updateUser(appUser: appUser, file: file);
          yield const ProfileRedactionState.success();
        } catch (e) {
          yield const ProfileRedactionState.error(
            error: 'error',
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ProfileRedactionState> _make() async* {
    yield const ProfileRedactionState.normal();

    yield* state.maybeMap(
      normal: (normalState) async* {
        yield const ProfileRedactionState.normal(
          shodStart: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }
}
