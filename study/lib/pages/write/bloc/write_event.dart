part of 'write_bloc.dart';

@freezed
class WriteEvent with _$WriteEvent {
  const factory WriteEvent.started() = _Started;
  const factory WriteEvent.showSheet() = _ShowSheet;
  const factory WriteEvent.resSend(
      StatisticColod statisticColod, String colodId) = _ResSend;
}
