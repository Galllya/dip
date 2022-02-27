part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.initial({
    @Default(false) bool show,
  }) = _Initial;
}
