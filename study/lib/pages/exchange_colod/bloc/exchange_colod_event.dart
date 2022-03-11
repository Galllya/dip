part of 'exchange_colod_bloc.dart';

@freezed
class ExchangeColodEvent with _$ExchangeColodEvent {
  const factory ExchangeColodEvent.started() = _Started;
  const factory ExchangeColodEvent.putColoda(
    String name,
    String? description,
    List<Card> cards,
    String? imageURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String userNamem,
    String? anotherUserUid,
  ) = _PutColoda;
}
