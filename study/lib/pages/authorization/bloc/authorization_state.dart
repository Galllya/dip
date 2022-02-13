part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.initial() = _Initial;
  const factory AuthorizationState.loading() = _Loading;
  const factory AuthorizationState.success() = _Success;
  const factory AuthorizationState.error({
    String? error,
  }) = _Error;
}
