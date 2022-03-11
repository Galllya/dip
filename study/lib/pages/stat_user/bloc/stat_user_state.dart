part of 'stat_user_bloc.dart';

@freezed
class StatUserState with _$StatUserState {
  const factory StatUserState.initial() = _Initial;
  const factory StatUserState.loading() = _Loading;
  const factory StatUserState.loaded({
    required List<StatisticColod> stat,
  }) = _Loaded;
  const factory StatUserState.error({
    String? error,
  }) = _Error;
}
