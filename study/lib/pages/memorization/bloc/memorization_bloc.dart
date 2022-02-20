import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memorization_event.dart';
part 'memorization_state.dart';
part 'memorization_bloc.freezed.dart';

class MemorizationBloc extends Bloc<MemorizationEvent, MemorizationState> {
  MemorizationBloc() : super(_Initial());
  @override
  Stream<MemorizationState> mapEventToState(
    MemorizationEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
      );

  Stream<MemorizationState> _started() async* {
    yield const MemorizationState.initial();
  }

  Stream<MemorizationState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const MemorizationState.initial(show: true);
        yield const MemorizationState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }
}
