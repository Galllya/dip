part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.loaded({
    required AppUser user,
  }) = _Loaded;
  const factory AccountState.error({
    String? error,
  }) = _Error;
}
