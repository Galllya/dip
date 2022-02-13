import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/resourses/auth_methods.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(const _Initial());
  @override
  Stream<AuthorizationState> mapEventToState(
    AuthorizationEvent event,
  ) =>
      event.when(
        started: _started,
        autUser: _autUser,
      );

  Stream<AuthorizationState> _started() async* {
    yield const AuthorizationState.initial();
  }

  Stream<AuthorizationState> _autUser(String email, String password) async* {
    yield const AuthorizationState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const AuthorizationState.loading();
        final String res =
            await AuthMethods().loginUser(email: email, password: password);

        if (res == "success") {
          yield const AuthorizationState.success();
        } else {
          yield AuthorizationState.error(
            error: res,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
