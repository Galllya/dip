part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.started() = _Started;
  const factory TestEvent.showSheet() = _ShowSheet;
}
