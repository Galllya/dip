part of 'redaction_collection_bloc.dart';

@freezed
class RedactionCollectionState with _$RedactionCollectionState {
  const factory RedactionCollectionState.initial({
    @Default(false) bool beginUpdate,
  }) = _Initial;
  const factory RedactionCollectionState.loaded({
    List<Coloda>? colods,
  }) = _Loaded;
  const factory RedactionCollectionState.loading() = _Loading;
  const factory RedactionCollectionState.success() = _Success;
  const factory RedactionCollectionState.error({
    String? error,
  }) = _Error;
  const factory RedactionCollectionState.loadingError({
    String? error,
  }) = _LoadingError;
}
