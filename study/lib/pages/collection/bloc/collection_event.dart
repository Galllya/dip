part of 'collection_bloc.dart';

@freezed
class CollectionEvent with _$CollectionEvent {
  const factory CollectionEvent.started(String id) = _Started;
  const factory CollectionEvent.load(String collectionId) = _Load;
  const factory CollectionEvent.deleteColoda(
    String docId,
  ) = _DeleteColoda;
}
