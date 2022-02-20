part of 'cards_bloc.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState.initial({
    @Default(false) bool show,
  }) = _Initial;
}
