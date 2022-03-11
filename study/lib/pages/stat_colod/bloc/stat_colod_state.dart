part of 'stat_colod_bloc.dart';

@freezed
class StatColodState with _$StatColodState {
  const factory StatColodState.initial() = _Initial;
  const factory StatColodState.loading() = _Loading;
  const factory StatColodState.loaded({
    required StatisticColod stat,
  }) = _Loaded;
  const factory StatColodState.error({
    String? error,
  }) = _Error;
}
