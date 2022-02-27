import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/provider/coloda_provider.dart';

part 'exchange_colod_event.dart';
part 'exchange_colod_state.dart';
part 'exchange_colod_bloc.freezed.dart';

class ExchangeColodBloc extends Bloc<ExchangeColodEvent, ExchangeColodState> {
  final ColodaProvider colodaProvider;
  ExchangeColodBloc({
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<ExchangeColodState> mapEventToState(
    ExchangeColodEvent event,
  ) =>
      event.when(
        started: _started,
        putColoda: _putColoda,
      );

  Stream<ExchangeColodState> _started() async* {
    yield const ExchangeColodState.initial();
  }

  Stream<ExchangeColodState> _putColoda(
    String name,
    String? description,
    List<Card> cards,
    String? imageURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String? userName,
  ) async* {
    yield const ExchangeColodState.initial();
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ExchangeColodState.loading();
        final String res = await colodaProvider.putColoda(
          name: name,
          description: description,
          cards: cards,
          imageURL: imageURL,
          showEvery: showEvery,
          takeMyHaveAuthour: takeMyHaveAuthour,
          tags: tags,
          userName: userName,
        );

        if (res == "success") {
          yield const ExchangeColodState.success();
        } else {
          yield ExchangeColodState.error(
            error: res,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
