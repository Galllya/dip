part of 'memorization_bloc.dart';

@freezed
class MemorizationState with _$MemorizationState {
  const factory MemorizationState.initial({
    @Default(false) bool show,
  }) = _Initial;
}
