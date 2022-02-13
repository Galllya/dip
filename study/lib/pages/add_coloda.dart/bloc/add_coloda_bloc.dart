import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/provider/coloda_provider.dart';

part 'add_coloda_event.dart';
part 'add_coloda_state.dart';
part 'add_coloda_bloc.freezed.dart';

class AddColodaBloc extends Bloc<AddColodaEvent, AddColodaState> {
  final ColodaProvider colodaProvider;
  AddColodaBloc({
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<AddColodaState> mapEventToState(
    AddColodaEvent event,
  ) =>
      event.when(
        started: _started,
        putColoda: _putColoda,
        make: _make,
        showModal: _showModal,
      );

  Stream<AddColodaState> _started() async* {
    yield const AddColodaState.initial();
  }

  Stream<AddColodaState> _make() async* {
    yield const AddColodaState.normal();

    yield* state.maybeMap(
      normal: (normalState) async* {
        yield const AddColodaState.normal(
          shodStart: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<AddColodaState> _showModal() async* {
    yield const AddColodaState.normal();

    yield* state.maybeMap(
      normal: (normalState) async* {
        yield const AddColodaState.normal(
          showModal: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<AddColodaState> _putColoda(
    String name,
    String? description,
    List<Card> cards,
    Uint8List? file,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
  ) async* {
    yield const AddColodaState.initial();
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const AddColodaState.loading();
        final String res = await colodaProvider.putColoda(
          name: name,
          description: description,
          cards: cards,
          file: file,
          showEvery: showEvery,
          takeMyHaveAuthour: takeMyHaveAuthour,
          tags: tags,
        );

        if (res == "success") {
          yield const AddColodaState.success();
        } else {
          yield AddColodaState.error(
            error: res,
          );
        }
        yield const AddColodaState.normal();
      },
      orElse: () => Stream.value(state),
    );
  }
}
