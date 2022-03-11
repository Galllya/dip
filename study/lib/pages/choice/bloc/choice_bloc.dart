import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'choice_event.dart';
part 'choice_state.dart';
part 'choice_bloc.freezed.dart';

class ChoiceBloc extends Bloc<ChoiceEvent, ChoiceState> {
  final StatisticProvider statisticProvider;
  ChoiceBloc({
    required this.statisticProvider,
  }) : super(const _Initial());
  @override
  Stream<ChoiceState> mapEventToState(
    ChoiceEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
        resSend: _resSend,
      );

  Stream<ChoiceState> _started() async* {
    yield const ChoiceState.initial();
  }

  Stream<ChoiceState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ChoiceState.initial(show: true);
        yield const ChoiceState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ChoiceState> _resSend(
      StatisticColod statisticColod, String colodId) async* {
    yield const ChoiceState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        await statisticProvider.updateStatisticColod(
            statisticColod: statisticColod, colodId: colodId);
      },
      orElse: () => Stream.value(state),
    );
  }
}
