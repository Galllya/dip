part of 'daily_training_bloc.dart';

@freezed
class DailyTrainingEvent with _$DailyTrainingEvent {
  const factory DailyTrainingEvent.started() = _Started;
  const factory DailyTrainingEvent.addCard(List<Card> cards) = _AddCard;
  const factory DailyTrainingEvent.deleteCard(List<String> cards) = _DeleteCard;
  const factory DailyTrainingEvent.startDelete() = _StartDelete;
  const factory DailyTrainingEvent.startGame() = _StartGame;
  const factory DailyTrainingEvent.updateCards(List<DailyCard> cards) =
      _UpdateCards;
  const factory DailyTrainingEvent.endGame() = _EndGame;
  const factory DailyTrainingEvent.noCards() = _NoCards;
}
