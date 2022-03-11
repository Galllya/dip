part of 'raiting_bloc.dart';

@freezed
class RaitingState with _$RaitingState {
  const factory RaitingState.initial() = _Initial;
  const factory RaitingState.loading() = _Loading;
  const factory RaitingState.loaded({
    required List<AnotherUser> usersPoints,
    required List<AnotherUser> usersSubs,
    required List<AnotherUser> usersHelp,
  }) = _Loaded;
  const factory RaitingState.error({
    String? error,
  }) = _Error;
}
