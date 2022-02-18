part of 'exchange_bloc.dart';

@freezed
class ExchangeState with _$ExchangeState {
  const factory ExchangeState.initial() = _Initial;
  const factory ExchangeState.loading() = _Loading;
  const factory ExchangeState.loaded({
    List<ColodaAll>? colodas,
    List<AppUser>? users,
  }) = _Loaded;
  const factory ExchangeState.error({
    String? error,
  }) = _Error;
}
