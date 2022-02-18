part of 'exchange_colod_bloc.dart';

@freezed
class ExchangeColodState with _$ExchangeColodState {
  const factory ExchangeColodState.initial() = _Initial;
  const factory ExchangeColodState.loading() = _Loading;
  const factory ExchangeColodState.success() = _Success;
  const factory ExchangeColodState.error({
    String? error,
  }) = _Error;
}
