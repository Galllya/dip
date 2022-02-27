import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_event.dart';
part 'write_state.dart';
part 'write_bloc.freezed.dart';

class WriteBloc extends Bloc<WriteEvent, WriteState> {
  WriteBloc() : super(const _Initial());
  @override
  Stream<WriteState> mapEventToState(
    WriteEvent event,
  ) =>
      event.when(
        started: _started,
        showSheet: _showSheet,
      );

  Stream<WriteState> _started() async* {
    yield const WriteState.initial();
  }

  Stream<WriteState> _showSheet() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const WriteState.initial(show: true);
        yield const WriteState.initial(show: false);
      },
      orElse: () => Stream.value(state),
    );
  }
}
