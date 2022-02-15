import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/provider/coloda_provider.dart';

part 'redaction_event.dart';
part 'redaction_state.dart';
part 'redaction_bloc.freezed.dart';

class RedactionBloc extends Bloc<RedactionEvent, RedactionState> {
  final ColodaProvider colodaProvider;
  RedactionBloc({
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<RedactionState> mapEventToState(
    RedactionEvent event,
  ) =>
      event.when(
        started: _started,
        updateColod: _updateColod,
        make: _make,
      );

  Stream<RedactionState> _started() async* {
    yield const RedactionState.initial();
  }

  Stream<RedactionState> _updateColod(
    String? name,
    String? description,
    List<Card>? cards,
    String? imageURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String uid,
    DateTime? dateNow,
    Uint8List? file,
    String? userName,
  ) async* {
    yield const RedactionState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const RedactionState.loading();
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
          file: file,
          authorName: userName,
        );

        if (res == "success") {
          yield const RedactionState.success();
        } else {
          yield RedactionState.error(
            error: res,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<RedactionState> _make() async* {
    yield const RedactionState.normal();

    yield* state.maybeMap(
      normal: (normalState) async* {
        yield const RedactionState.normal(
          shodStart: true,
        );
      },
      orElse: () => Stream.value(state),
    );
  }
}
