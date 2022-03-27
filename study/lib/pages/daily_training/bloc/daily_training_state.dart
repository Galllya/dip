part of 'daily_training_bloc.dart';

@freezed
class DailyTrainingState with _$DailyTrainingState {
  const factory DailyTrainingState.initial({
    Stream? cards,
    Stream? cardsTwo,
    @Default(false) showDelete,
    DateTime? lastTrain,
    @Default(true) loading,
    @Default(false) showGame,
    @Default(false) endGame,
    @Default(false) noCards,
  }) = _Initial;
}
