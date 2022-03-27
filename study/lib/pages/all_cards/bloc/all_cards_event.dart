part of 'all_cards_bloc.dart';

@freezed
class AllCardsEvent with _$AllCardsEvent {
  const factory AllCardsEvent.started(String colodaId) = _Started;
  const factory AllCardsEvent.load(String colodaId) = _Load;
  const factory AllCardsEvent.send() = _Send;
}
