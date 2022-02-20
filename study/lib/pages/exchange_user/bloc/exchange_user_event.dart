part of 'exchange_user_bloc.dart';

@freezed
class ExchangeUserEvent with _$ExchangeUserEvent {
  const factory ExchangeUserEvent.started(String uid) = _Started;
  const factory ExchangeUserEvent.load(String uid) = _Load;
  const factory ExchangeUserEvent.folow(
    bool isFollow,
    String anotherUserUID,
    List<String> anotherUserSubscribers,
    List<String> curUserSubscrip,
  ) = _Folow;
}
