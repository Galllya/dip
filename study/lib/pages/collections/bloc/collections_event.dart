part of 'collections_bloc.dart';

@freezed
class CollectionsEvent with _$CollectionsEvent {
  const factory CollectionsEvent.started() = _Started;
}