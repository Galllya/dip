import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_event.dart';
part 'join_state.dart';
part 'join_bloc.freezed.dart';

class JoinBloc extends Bloc<JoinEvent, JoinState> {
  JoinBloc() : super(const _Initial());
  @override
  Stream<JoinState> mapEventToState(
    JoinEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
      );

  Stream<JoinState> _started() async* {
    yield const JoinState.initial();
  }

  Stream<JoinState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const JoinState.initial(show: true);
        yield const JoinState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }
}
