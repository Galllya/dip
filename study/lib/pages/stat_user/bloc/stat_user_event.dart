part of 'stat_user_bloc.dart';

@freezed
class StatUserEvent with _$StatUserEvent {
  const factory StatUserEvent.started(String? uid) = _Started;
  const factory StatUserEvent.load(String? uid) = _Load;
}
