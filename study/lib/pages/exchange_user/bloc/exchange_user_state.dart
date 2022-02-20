part of 'exchange_user_bloc.dart';

@freezed
class ExchangeUserState with _$ExchangeUserState {
  const factory ExchangeUserState.initial() = _Initial;
  const factory ExchangeUserState.loading() = _Loading;
  const factory ExchangeUserState.loaded({
    required List<AnotherUser> asers,
    required AppUser user,
    required List<ColodaAll> colodas,
    @Default(false) bool idFollowingProccess,
    bool? isFollowSuccess,
  }) = _Loaded;
  const factory ExchangeUserState.error({
    String? error,
  }) = _Error;
}
