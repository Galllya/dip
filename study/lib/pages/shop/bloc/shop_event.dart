part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.started({
    required int points,
    required List<bool> buied,
  }) = _Started;
  const factory ShopEvent.buy({
    required int minusPoints,
    required int index,
  }) = _Buy;
  const factory ShopEvent.back() = _Back;
}
