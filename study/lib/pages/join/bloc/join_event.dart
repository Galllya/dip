part of 'join_bloc.dart';

@freezed
class JoinEvent with _$JoinEvent {
  const factory JoinEvent.started() = _Started;
  const factory JoinEvent.showSheet() = _ShowSheet;
}
