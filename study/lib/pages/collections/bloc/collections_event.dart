part of 'collections_bloc.dart';

@freezed
class CollectionsEvent with _$CollectionsEvent {
  const factory CollectionsEvent.started(int cardsFilter) = _Started;
  const factory CollectionsEvent.load(int cardsFilter) = _Load;
  const factory CollectionsEvent.changeShowString() = _ChangeShowString;
  const factory CollectionsEvent.search(
      String searchString, bool isTagsSearch) = _Search;
  const factory CollectionsEvent.changeFilter(int cardsFilter) = _ChangeFilter;
}
