import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc() : super(const _Initial());
  @override
  Stream<CardsState> mapEventToState(
    CardsEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
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
}
