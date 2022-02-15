part of 'exchange_bloc.dart';

@freezed
class ExchangeEvent with _$ExchangeEvent {
  const factory ExchangeEvent.started(String searchString) = _Started;
  const factory ExchangeEvent.load(String searchString) = _Load;
}
