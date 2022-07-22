import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/provider/coloda_provider.dart';

part 'colods_event.dart';
part 'colods_state.dart';
part 'colods_bloc.freezed.dart';

class ColodsBloc extends Bloc<ColodsEvent, ColodsState> {
  final ColodaProvider colodaProvider;
  ColodsBloc({
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<ColodsState> mapEventToState(
    ColodsEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        changeShowString: _changeShowString,
        search: _search,
        changeFilter: _changeFilter,
      );

  Stream<ColodsState> _started(int cardsFilter) async* {
    yield const ColodsState.initial();
    yield* _load(cardsFilter);
  }

  Stream<ColodsState> _load(int cardsFilter) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ColodsState.loading();

        try {
          final colodas =
              await colodaProvider.getUserColoda(isTagsSearch: false);
          yield ColodsState.loaded(
            colodas: colodas,
            cardsFilter: cardsFilter,
          );
        } on DioError catch (e) {
          yield const ColodsState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ColodsState> _changeShowString() async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        yield ColodsState.loaded(
          colodas: loadedState.colodas,
          showSearchString: !loadedState.showSearchString,
          cardsFilter: loadedState.cardsFilter,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ColodsState> _changeFilter(int cardsFilter) async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        yield ColodsState.loaded(
          colodas: loadedState.colodas,
          showSearchString: loadedState.showSearchString,
          cardsFilter: cardsFilter,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ColodsState> _search(String searchString, bool isTagsSearch) async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        try {
          final colodas = await colodaProvider.getUserColoda(
            searchText: searchString,
            isTagsSearch: isTagsSearch,
          );
          yield ColodsState.loaded(
            colodas: colodas,
            showSearchString: loadedState.showSearchString,
            cardsFilter: loadedState.cardsFilter,
          );
        } catch (e) {
          yield const ColodsState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
