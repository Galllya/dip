import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/collection.dart';
import 'package:study/provider/collection_provider.dart';

part 'add_collection_event.dart';
part 'add_collection_state.dart';
part 'add_collection_bloc.freezed.dart';

class AddCollectionBloc extends Bloc<AddCollectionEvent, AddCollectionState> {
  final CollectionProvider collectionProvider;
  AddCollectionBloc({
    required this.collectionProvider,
  }) : super(const _Initial());
  @override
  Stream<AddCollectionState> mapEventToState(
    AddCollectionEvent event,
  ) =>
      event.when(
        started: _started,
        putCollection: putCollection,
        make: _make,
      );

  Stream<AddCollectionState> _started() async* {
    yield const AddCollectionState.initial();
  }

  Stream<AddCollectionState> _make() async* {
    yield const AddCollectionState.normal();

    yield* state.maybeMap(
      normal: (normalState) async* {
        yield const AddCollectionState.normal(
          shodStart: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<AddCollectionState> putCollection(
    Uint8List? file,
    Collection collection,
  ) async* {
    yield const AddCollectionState.initial();
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const AddCollectionState.loading();
        final String res = await collectionProvider.putCollection(
          collection: collection,
          file: file,
        );

        if (res == "success") {
          yield const AddCollectionState.success();
        } else {
          yield AddCollectionState.error(
            error: res,
          );
        }
        yield const AddCollectionState.normal();
      },
      orElse: () => Stream.value(state),
    );
  }
}
