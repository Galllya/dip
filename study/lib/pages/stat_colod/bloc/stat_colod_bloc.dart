import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'stat_colod_event.dart';
part 'stat_colod_state.dart';
part 'stat_colod_bloc.freezed.dart';

class StatColodBloc extends Bloc<StatColodEvent, StatColodState> {
  final StatisticProvider statisticProvider;
  StatColodBloc({
    required this.statisticProvider,
  }) : super(const _Initial());
  @override
  Stream<StatColodState> mapEventToState(
    StatColodEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<StatColodState> _started(String colodId) async* {
    yield const StatColodState.initial();
    yield* _load(colodId);
  }

  Stream<StatColodState> _load(String colodId) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const StatColodState.loading();

        try {
          final stat =
              await statisticProvider.getStatisticColod(colodId: colodId);
          yield StatColodState.loaded(
            stat: stat,
          );
        } catch (e) {
          yield const StatColodState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
