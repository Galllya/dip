part of 'raiting_bloc.dart';

@freezed
class RaitingEvent with _$RaitingEvent {
  const factory RaitingEvent.started() = _Started;
  const factory RaitingEvent.load() = _Load;
}
