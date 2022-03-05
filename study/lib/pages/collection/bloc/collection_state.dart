part of 'collection_bloc.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;
  const factory CollectionState.loading() = _Loading;
  const factory CollectionState.loaded({
    required Collection collection,
    List<Coloda>? colods,
    @Default(false) bool isDeleteProccess,
    bool? isDeleteSuccess,
  }) = _Loaded;
  const factory CollectionState.error({
    String? error,
  }) = _Error;
}
