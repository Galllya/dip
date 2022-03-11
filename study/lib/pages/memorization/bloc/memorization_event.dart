part of 'memorization_bloc.dart';

@freezed
class MemorizationEvent with _$MemorizationEvent {
  const factory MemorizationEvent.started() = _Started;
  const factory MemorizationEvent.showSheet() = _ShowSheet;
  const factory MemorizationEvent.resSend(
      StatisticColod statisticColod, String colodId) = _ResSend;
}
