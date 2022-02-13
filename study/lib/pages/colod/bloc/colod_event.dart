part of 'colod_bloc.dart';

@freezed
class ColodEvent with _$ColodEvent {
  const factory ColodEvent.started(String colodaId) = _Started;
  const factory ColodEvent.load(String colodaId) = _Load;
  const factory ColodEvent.updateColoda(
    String? name,
    String? description,
    List<Card>? cards,
    String? imageURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String uid,
    DateTime? dateNow,
  ) = _UpdateColoda;
  const factory ColodEvent.loadAfterUpdate(String colodaId) = _LoadAfterUpdate;
  const factory ColodEvent.deleteColoda(
    String docId,
  ) = _DeleteColoda;
}
