import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_event.dart';
part 'test_state.dart';
part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(const _Initial());
  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
      );

  Stream<TestState> _started() async* {
    yield const TestState.initial();
  }

  Stream<TestState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const TestState.initial(show: true);
        yield const TestState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }
}
