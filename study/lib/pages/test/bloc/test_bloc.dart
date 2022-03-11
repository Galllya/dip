import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'test_event.dart';
part 'test_state.dart';
part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final StatisticProvider statisticProvider;

  TestBloc({
    required this.statisticProvider,
  }) : super(const _Initial());
  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
        resSend: _resSend,
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

  Stream<TestState> _resSend(
      StatisticColod statisticColod, String colodId) async* {
    yield const TestState.initial(show: false);

    yield* state.maybeMap(
      initial: (initialState) async* {
        await statisticProvider.updateStatisticColod(
            statisticColod: statisticColod, colodId: colodId);
      },
      orElse: () => Stream.value(state),
    );
  }
}
