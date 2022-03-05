import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/provider/collection_provider.dart';

part 'redaction_collection_event.dart';
part 'redaction_collection_state.dart';
part 'redaction_collection_bloc.freezed.dart';

class RedactionCollectionBloc
    extends Bloc<RedactionCollectionEvent, RedactionCollectionState> {
  final CollectionProvider collectionProvider;
  RedactionCollectionBloc({
    required this.collectionProvider,
  }) : super(const _Initial());
  @override
  Stream<RedactionCollectionState> mapEventToState(
    RedactionCollectionEvent event,
  ) =>
      event.when(
        started: _started,
        update: _update,
        beginUpdate: _beginUpdate,
      );

  Stream<RedactionCollectionState> _started(List<String> colodsId) async* {
    yield const RedactionCollectionState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const RedactionCollectionState.loading();

        try {
          final colods = await collectionProvider.getColodsInCollection(
              colodsId: colodsId);
          yield RedactionCollectionState.loaded(
            colods: colods,
          );
        } catch (e) {
          yield const RedactionCollectionState.loadingError(
              error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<RedactionCollectionState> _beginUpdate() async* {
    yield const RedactionCollectionState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const RedactionCollectionState.initial(
          beginUpdate: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<RedactionCollectionState> _update(
      Collection collection, Uint8List? file) async* {
    yield const RedactionCollectionState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const RedactionCollectionState.loading();
        final String res = await collectionProvider.updateCollection(
          collection: collection,
          file: file,
        );

        if (res == "success") {
          yield const RedactionCollectionState.success();
        } else {
          yield RedactionCollectionState.error(
            error: res,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
