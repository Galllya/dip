part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({
    required List<Coloda> colods,
    required List<Collection> collections,
  }) = _Loaded;
  const factory HomeState.error({
    String? error,
  }) = _Error;
}
