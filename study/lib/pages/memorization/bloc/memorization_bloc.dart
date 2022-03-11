import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'memorization_event.dart';
part 'memorization_state.dart';
part 'memorization_bloc.freezed.dart';

class MemorizationBloc extends Bloc<MemorizationEvent, MemorizationState> {
  final StatisticProvider statisticProvider;
  MemorizationBloc({
    required this.statisticProvider,
  }) : super(const _Initial());
  @override
  Stream<MemorizationState> mapEventToState(
    MemorizationEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
        resSend: _resSend,
      );

  Stream<MemorizationState> _started() async* {
    yield const MemorizationState.initial();
  }

  Stream<MemorizationState> _resSend(
      StatisticColod statisticColod, String colodId) async* {
    yield const MemorizationState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        await statisticProvider.updateStatisticColod(
            statisticColod: statisticColod, colodId: colodId);
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<MemorizationState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const MemorizationState.initial(show: true);
        yield const MemorizationState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }
}
