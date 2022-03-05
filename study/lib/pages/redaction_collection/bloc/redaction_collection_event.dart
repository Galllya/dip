part of 'redaction_collection_bloc.dart';

@freezed
class RedactionCollectionEvent with _$RedactionCollectionEvent {
  const factory RedactionCollectionEvent.started(List<String> colodsId) =
      _Started;
  const factory RedactionCollectionEvent.update(
      Collection collection, Uint8List? file) = _Update;

  const factory RedactionCollectionEvent.beginUpdate() = _BeginUpdate;
}
