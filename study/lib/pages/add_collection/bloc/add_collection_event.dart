part of 'add_collection_bloc.dart';

@freezed
class AddCollectionEvent with _$AddCollectionEvent {
  const factory AddCollectionEvent.started() = _Started;
  const factory AddCollectionEvent.putCollection(
    Uint8List? file,
    Collection collection,
  ) = _PutCollection;
  const factory AddCollectionEvent.make() = _Make;
}
