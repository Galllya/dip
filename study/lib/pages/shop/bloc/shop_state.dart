part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.initial() = _Initial;
  const factory ShopState.load({
    int? points,
    List<bool>? buied,
  }) = _Load;
}
