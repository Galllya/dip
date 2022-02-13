import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/resourses/auth_methods.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(const _Initial());
  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) =>
      event.when(
        started: _started,
        registerUser: _registerUser,
      );

  Stream<RegistrationState> _started() async* {
    yield const RegistrationState.initial();
  }

  Stream<RegistrationState> _registerUser(
      FormGroup form, Uint8List? file) async* {
    yield const RegistrationState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const RegistrationState.loading();
        final String res = await AuthMethods().signUpUser(
          email: form.control('email').value,
          password: form.control('password').value,
          userName: form.control('name').value,
          file: file,
        );
        if (res == "success") {
          yield const RegistrationState.success();
        } else {
          yield RegistrationState.error(
            error: res,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
