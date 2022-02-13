part of 'colods_bloc.dart';

@freezed
class ColodsState with _$ColodsState {
  const factory ColodsState.initial() = _Initial;
  const factory ColodsState.loading() = _Loading;
  const factory ColodsState.loaded({
    required List<Coloda> colodas,
    @Default(false) bool showSearchString,
    @Default(0) int cardsFilter,
  }) = _Loaded;
  const factory ColodsState.error({
    String? error,
  }) = _Error;
}
