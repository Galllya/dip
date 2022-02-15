part of 'redaction_bloc.dart';

@freezed
class RedactionEvent with _$RedactionEvent {
  const factory RedactionEvent.started() = _Started;
  const factory RedactionEvent.updateColod(
    String? name,
    String? description,
    List<Card>? cards,
    String? imageURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String uid,
    DateTime? dateNow,
    Uint8List? file,
    String? userName,
  ) = _UpdateColod;
  const factory RedactionEvent.make() = _Make;
}
