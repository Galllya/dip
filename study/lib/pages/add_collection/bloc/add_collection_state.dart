part of 'add_collection_bloc.dart';

@freezed
class AddCollectionState with _$AddCollectionState {
  const factory AddCollectionState.initial() = _Initial;
  const factory AddCollectionState.loading() = _Loading;
  const factory AddCollectionState.success() = _Success;
  const factory AddCollectionState.error({
    String? error,
  }) = _Error;
  const factory AddCollectionState.normal({
    @Default(false) bool shodStart,
  }) = _Normal;
}
