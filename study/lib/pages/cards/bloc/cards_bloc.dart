import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final StatisticProvider statisticProvider;
  CardsBloc({
    required this.statisticProvider,
  }) : super(const _Initial());
  @override
  Stream<CardsState> mapEventToState(
    CardsEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
        resSend: _resSend,
      );

  Stream<CardsState> _started() async* {
    yield const CardsState.initial();
  }

  Stream<CardsState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const CardsState.initial(show: true);
        yield const CardsState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<CardsState> _resSend(
      StatisticColod statisticColod, String colodId) async* {
    yield const CardsState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        await statisticProvider.updateStatisticColod(
            statisticColod: statisticColod, colodId: colodId);
      },
      orElse: () => Stream.value(state),
    );
  }
}
