part of 'profile_redaction_bloc.dart';

@freezed
class ProfileRedactionEvent with _$ProfileRedactionEvent {
  const factory ProfileRedactionEvent.started() = _Started;
  const factory ProfileRedactionEvent.update(
    AppUser appUser,
    Uint8List? file,
  ) = _Update;
  const factory ProfileRedactionEvent.make() = _Make;
}
