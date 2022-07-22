import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/pages/collection/widgets/colods.dart';
import 'package:study/provider/collection_provider.dart';
import 'package:study/provider/coloda_provider.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ColodaProvider colodaProvider;
  final CollectionProvider collectionProvider;
  HomeBloc({
    required this.collectionProvider,
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<HomeState> _started() async* {
    yield const HomeState.initial();
    yield* _load();
  }

  Stream<HomeState> _load() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const HomeState.loading();

        try {
          final colods = await colodaProvider.getMainColods();
          final collections = await collectionProvider.getMainCollections();

          yield HomeState.loaded(
            colods: colods,
            collections: collections,
          );
        } on DioError catch (e) {
          yield const HomeState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
