import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_event.dart';
part 'choice_state.dart';
part 'choice_bloc.freezed.dart';

class ChoiceBloc extends Bloc<ChoiceEvent, ChoiceState> {
  ChoiceBloc() : super(const _Initial());
  @override
  Stream<ChoiceState> mapEventToState(
    ChoiceEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
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
}
