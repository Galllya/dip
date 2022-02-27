import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/provider/coloda_provider.dart';

part 'colod_event.dart';
part 'colod_state.dart';
part 'colod_bloc.freezed.dart';

class ColodBloc extends Bloc<ColodEvent, ColodState> {
  final ColodaProvider colodaProvider;
  ColodBloc({
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<ColodState> mapEventToState(
    ColodEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        updateColoda: _updateColoda,
        loadAfterUpdate: _loadAfterUpdate,
        deleteColoda: _deleteColoda,
      );

  Stream<ColodState> _started(String id) async* {
    yield const ColodState.initial();
    yield* _load(id);
  }

  Stream<ColodState> _load(String id) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ColodState.loading();

        try {
          final coloda = await colodaProvider.getColodDetail(colodID: id);
          yield ColodState.loaded(
            coloda: coloda,
          );
        } catch (e) {
          yield const ColodState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ColodState> _deleteColoda(String id) async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        yield ColodState.loaded(
          coloda: loaded.coloda,
          isDeleteProccess: true,
        );
        final String res = await colodaProvider.deleteColoda(docId: id);
        if (res == 'success') {
          yield ColodState.loaded(
            coloda: loaded.coloda,
            isDeleteProccess: false,
            isDeleteSuccess: true,
          );
        } else {
          yield ColodState.loaded(
            coloda: loaded.coloda,
            isDeleteProccess: false,
            isDeleteSuccess: false,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ColodState> _loadAfterUpdate(String id) async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        try {
          final coloda = await colodaProvider.getColodDetail(colodID: id);
          yield ColodState.loaded(
            coloda: coloda,
          );
        } catch (e) {
          yield const ColodState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ColodState> _updateColoda(
    String? name,
    String? description,
    List<Card>? cards,
    String? imageURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String uid,
    DateTime? dateNow,
  ) async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        yield ColodState.loaded(
          coloda: loaded.coloda,
          isUpdating: true,
        );
        final String res = await colodaProvider.updateColoda(
          name: name,
          description: description,
          cards: cards,
          photoURL: imageURL,
          showEvery: showEvery,
          takeMyHaveAuthour: takeMyHaveAuthour,
          tags: tags,
          docId: uid,
          dateNow: dateNow,
        );
        if (res == 'success') {
          yield ColodState.loaded(
            coloda: loaded.coloda,
            isUpdating: false,
            isSuccses: true,
          );
        } else {
          yield ColodState.loaded(
            coloda: loaded.coloda,
            isUpdating: false,
            isSuccses: false,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
