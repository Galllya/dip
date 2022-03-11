import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/statistic.dart';
import 'package:study/provider/statistic_provider.dart';

part 'stat_user_event.dart';
part 'stat_user_state.dart';
part 'stat_user_bloc.freezed.dart';

class StatUserBloc extends Bloc<StatUserEvent, StatUserState> {
  final StatisticProvider statisticProvider;
  StatUserBloc({
    required this.statisticProvider,
  }) : super(_Initial());
  @override
  Stream<StatUserState> mapEventToState(
    StatUserEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<StatUserState> _started(String? uid) async* {
    yield const StatUserState.initial();
    yield* _load(uid);
  }

  Stream<StatUserState> _load(String? uid) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const StatUserState.loading();

        try {
          final stat = await statisticProvider.getUserStat(uid: uid);
          yield StatUserState.loaded(
            stat: stat,
          );
        } catch (e) {
          yield const StatUserState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
