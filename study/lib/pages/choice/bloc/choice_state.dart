part of 'choice_bloc.dart';

@freezed
class ChoiceState with _$ChoiceState {
  const factory ChoiceState.initial({
    @Default(false) bool show,
  }) = _Initial;
}
