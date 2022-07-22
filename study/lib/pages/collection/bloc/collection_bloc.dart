import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/provider/collection_provider.dart';

part 'collection_event.dart';
part 'collection_state.dart';
part 'collection_bloc.freezed.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  final CollectionProvider collectionProvider;
  CollectionBloc({
    required this.collectionProvider,
  }) : super(const _Initial());
  @override
  Stream<CollectionState> mapEventToState(
    CollectionEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        deleteColoda: _deleteColoda,
      );

  Stream<CollectionState> _started(String id) async* {
    yield const CollectionState.initial();
    yield* _load(id);
  }

  Stream<CollectionState> _load(String id) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const CollectionState.loading();

        try {
          final collection =
              await collectionProvider.getColodDetail(collectionId: id);
          final colods = await collectionProvider.getColodsInCollection(
              colodsId: collection.colodsId!);
          yield CollectionState.loaded(
            collection: collection,
            colods: colods,
          );
        } on DioError catch (e) {
          yield const CollectionState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<CollectionState> _deleteColoda(String id) async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        yield CollectionState.loaded(
          collection: loaded.collection,
          isDeleteProccess: true,
        );
        final String res = await collectionProvider.deleteCollection(docId: id);
        if (res == 'success') {
          yield CollectionState.loaded(
            collection: loaded.collection,
            isDeleteProccess: false,
            isDeleteSuccess: true,
          );
        } else {
          yield CollectionState.loaded(
            collection: loaded.collection,
            isDeleteProccess: false,
            isDeleteSuccess: false,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
