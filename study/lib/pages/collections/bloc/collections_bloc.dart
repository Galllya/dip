import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/collection.dart';
import 'package:study/provider/collection_provider.dart';

part 'collections_event.dart';
part 'collections_state.dart';
part 'collections_bloc.freezed.dart';

class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  final CollectionProvider collectionProvider;
  CollectionsBloc({
    required this.collectionProvider,
  }) : super(const _Initial());
  @override
  Stream<CollectionsState> mapEventToState(
    CollectionsEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        changeShowString: _changeShowString,
        search: _search,
        changeFilter: _changeFilter,
      );

  Stream<CollectionsState> _started(int cardsFilter) async* {
    yield const CollectionsState.initial();
    yield* _load(cardsFilter);
  }

  Stream<CollectionsState> _load(int cardsFilter) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const CollectionsState.loading();

        try {
          final collection =
              await collectionProvider.getUserCollections(isTagsSearch: false);
          yield CollectionsState.loaded(
            collection: collection,
            cardsFilter: cardsFilter,
          );
        } catch (e) {
          yield const CollectionsState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<CollectionsState> _changeShowString() async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        yield CollectionsState.loaded(
          collection: loadedState.collection,
          showSearchString: !loadedState.showSearchString,
          cardsFilter: loadedState.cardsFilter,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<CollectionsState> _changeFilter(int cardsFilter) async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        yield CollectionsState.loaded(
          collection: loadedState.collection,
          showSearchString: loadedState.showSearchString,
          cardsFilter: cardsFilter,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<CollectionsState> _search(
      String searchString, bool isTagsSearch) async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        try {
          final collection = await collectionProvider.getUserCollections(
            searchText: searchString,
            isTagsSearch: isTagsSearch,
          );
          yield CollectionsState.loaded(
            collection: collection,
            showSearchString: loadedState.showSearchString,
            cardsFilter: loadedState.cardsFilter,
          );
        } catch (e) {
          yield const CollectionsState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
