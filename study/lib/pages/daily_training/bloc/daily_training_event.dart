part of 'daily_training_bloc.dart';

@freezed
class DailyTrainingEvent with _$DailyTrainingEvent {
  const factory DailyTrainingEvent.started() = _Started;
}