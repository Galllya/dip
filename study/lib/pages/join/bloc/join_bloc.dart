import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'join_event.dart';
part 'join_state.dart';
part 'join_bloc.freezed.dart';

class JoinBloc extends Bloc<JoinEvent, JoinState> {
  final StatisticProvider statisticProvider;
  JoinBloc({
    required this.statisticProvider,
  }) : super(const _Initial());
  @override
  Stream<JoinState> mapEventToState(
    JoinEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
        resSend: _resSend,
      );

  Stream<JoinState> _started() async* {
    yield const JoinState.initial();
  }

  Stream<JoinState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const JoinState.initial(show: true);
        yield const JoinState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<JoinState> _resSend(
      StatisticColod statisticColod, String colodId) async* {
    yield const JoinState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        await statisticProvider.updateStatisticColod(
            statisticColod: statisticColod, colodId: colodId);
      },
      orElse: () => Stream.value(state),
    );
  }
}
