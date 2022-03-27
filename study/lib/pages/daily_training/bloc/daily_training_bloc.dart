import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/models/daile.dart';
import 'package:study/models/daile_card.dart';
import 'package:study/provider/trainings_provider.dart';

part 'daily_training_event.dart';
part 'daily_training_state.dart';
part 'daily_training_bloc.freezed.dart';

class DailyTrainingBloc extends Bloc<DailyTrainingEvent, DailyTrainingState> {
  final TrainingProvider trainingProvider;
  DailyTrainingBloc({
    required this.trainingProvider,
  }) : super(const _Initial());
  @override
  Stream<DailyTrainingState> mapEventToState(
    DailyTrainingEvent event,
  ) =>
      event.when(
        started: _started,
        addCard: _addCard,
        deleteCard: _deleteCard,
        startDelete: _startDelete,
        startGame: _startGame,
        updateCards: _updateCards,
        endGame: _endGame,
        noCards: _noCards,
      );

  Stream<DailyTrainingState> _started() async* {
    yield const DailyTrainingState.initial(
      loading: true,
    );
    try {
      var cards = trainingProvider.getCards();
      var cardsTwo = trainingProvider.getCardsNowTrain();

      var lastTrain = await trainingProvider.getDaily();
      yield DailyTrainingState.initial(
        cards: cards,
        lastTrain: lastTrain.lastTrain,
        loading: false,
        cardsTwo: cardsTwo,
      );
    } catch (e) {}
  }

  Stream<DailyTrainingState> _addCard(List<Card> cards) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        try {
          await trainingProvider.putCards(
            cards: cards,
          );
        } catch (e) {}
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<DailyTrainingState> _deleteCard(List<String> cards) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        try {
          await trainingProvider.deleteCards(cards: cards);
        } catch (e) {}
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<DailyTrainingState> _startDelete() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield DailyTrainingState.initial(
          showDelete: !initialState.showDelete,
          cards: initialState.cards,
          cardsTwo: initialState.cardsTwo,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<DailyTrainingState> _startGame() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield DailyTrainingState.initial(
          cards: initialState.cards,
          loading: false,
          lastTrain: initialState.lastTrain,
          cardsTwo: initialState.cardsTwo,
          showDelete: false,
          showGame: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<DailyTrainingState> _endGame() async* {
    print('end');
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield DailyTrainingState.initial(
          endGame: true,
          cards: initialState.cards,
          loading: false,
          lastTrain: initialState.lastTrain,
          cardsTwo: initialState.cardsTwo,
          showDelete: false,
          showGame: false,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<DailyTrainingState> _noCards() async* {
    print('no_card');

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield DailyTrainingState.initial(
          endGame: initialState.endGame,
          cards: initialState.cards,
          loading: false,
          lastTrain: initialState.lastTrain,
          cardsTwo: initialState.cardsTwo,
          showDelete: false,
          showGame: true,
          noCards: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<DailyTrainingState> _updateCards(List<DailyCard> cards) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        await trainingProvider.updateCards(cards: cards);
      },
      orElse: () => Stream.value(state),
    );
  }
}
