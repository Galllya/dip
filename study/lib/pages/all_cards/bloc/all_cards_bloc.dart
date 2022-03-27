import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/provider/coloda_provider.dart';

part 'all_cards_event.dart';
part 'all_cards_state.dart';
part 'all_cards_bloc.freezed.dart';

class AllCardsBloc extends Bloc<AllCardsEvent, AllCardsState> {
  final ColodaProvider colodaProvider;
  AllCardsBloc({
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<AllCardsState> mapEventToState(
    AllCardsEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        send: _send,
      );

  Stream<AllCardsState> _started(String id) async* {
    yield const AllCardsState.initial();
    yield* _load(id);
  }

  Stream<AllCardsState> _send() async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        yield AllCardsState.loaded(
          coloda: loadedState.coloda,
          send: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<AllCardsState> _load(String id) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const AllCardsState.loading();
        try {
          final coloda = await colodaProvider.getColodDetail(colodID: id);
          yield AllCardsState.loaded(
            coloda: coloda,
          );
        } catch (e) {
          yield const AllCardsState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
