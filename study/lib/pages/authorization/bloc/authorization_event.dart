part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.started() = _Started;
  const factory AuthorizationEvent.autUser(String email, String password) =
      _AutUser;
}
