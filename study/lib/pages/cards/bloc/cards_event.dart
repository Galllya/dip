part of 'cards_bloc.dart';

@freezed
class CardsEvent with _$CardsEvent {
  const factory CardsEvent.started() = _Started;
  const factory CardsEvent.showSheet() = _ShowSheet;
  const factory CardsEvent.resSend(
      StatisticColod statisticColod, String colodId) = _ResSend;
}
