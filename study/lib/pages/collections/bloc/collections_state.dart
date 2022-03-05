part of 'collections_bloc.dart';

@freezed
class CollectionsState with _$CollectionsState {
  const factory CollectionsState.initial() = _Initial;
  const factory CollectionsState.loading() = _Loading;
  const factory CollectionsState.loaded({
    required List<Collection> collection,
    @Default(false) bool showSearchString,
    @Default(0) int cardsFilter,
  }) = _Loaded;
  const factory CollectionsState.error({
    String? error,
  }) = _Error;
}
