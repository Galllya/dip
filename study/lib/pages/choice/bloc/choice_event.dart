part of 'choice_bloc.dart';

@freezed
class ChoiceEvent with _$ChoiceEvent {
  const factory ChoiceEvent.started() = _Started;
  const factory ChoiceEvent.showSheet() = _ShowSheet;
}
