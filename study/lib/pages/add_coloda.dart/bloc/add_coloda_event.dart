part of 'add_coloda_bloc.dart';

@freezed
class AddColodaEvent with _$AddColodaEvent {
  const factory AddColodaEvent.started() = _Started;
  const factory AddColodaEvent.putColoda(
    String name,
    String? description,
    List<Card> cards,
    Uint8List? file,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
  ) = _PutColoda;
  const factory AddColodaEvent.make() = _Make;
  const factory AddColodaEvent.showModal() = _ShowModal;
}
