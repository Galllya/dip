part of 'colods_bloc.dart';

@freezed
class ColodsEvent with _$ColodsEvent {
  const factory ColodsEvent.started(int cardsFilter) = _Started;
  const factory ColodsEvent.load(int cardsFilter) = _Load;
  const factory ColodsEvent.changeShowString() = _ChangeShowString;
  const factory ColodsEvent.search(String searchString, bool isTagsSearch) =
      _Search;
  const factory ColodsEvent.changeFilter(int cardsFilter) = _ChangeFilter;
}
