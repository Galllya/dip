part of 'all_cards_bloc.dart';

@freezed
class AllCardsState with _$AllCardsState {
  const factory AllCardsState.initial() = _Initial;
  const factory AllCardsState.loading() = _Loading;
  const factory AllCardsState.loaded({
    required DetailColoda coloda,
    @Default(false) bool send,
  }) = _Loaded;
  const factory AllCardsState.error({
    String? error,
  }) = _Error;
}
