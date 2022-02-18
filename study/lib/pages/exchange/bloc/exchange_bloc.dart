import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/app_user.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/coloda_provider.dart';

part 'exchange_event.dart';
part 'exchange_state.dart';
part 'exchange_bloc.freezed.dart';

class ExchangeBloc extends Bloc<ExchangeEvent, ExchangeState> {
  final UserProvider userProvider;
  final ColodaProvider colodaProvider;
  ExchangeBloc({
    required this.userProvider,
    required this.colodaProvider,
  }) : super(const _Initial());
  @override
  Stream<ExchangeState> mapEventToState(
    ExchangeEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        loadUsers: _loadUsers,
      );

  Stream<ExchangeState> _started(String searchString) async* {
    yield const ExchangeState.loaded();
    yield* _load(searchString);
  }

  Stream<ExchangeState> _load(String searchString) async* {
    yield* state.maybeMap(
      loaded: (loaded) async* {
        yield const ExchangeState.loading();

        try {
          final colodas =
              await colodaProvider.getAllColods(searchText: searchString);
          yield ExchangeState.loaded(
            colodas: colodas,
            users: loaded.users,
          );
        } catch (e) {
          yield const ExchangeState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ExchangeState> _loadUsers(String searchString) async* {
    yield const ExchangeState.loaded();

    yield* state.maybeMap(
      loaded: (loaded) async* {
        yield const ExchangeState.loading();

        try {
          final users =
              await userProvider.getAllUsers(searchText: searchString);

          yield ExchangeState.loaded(
            colodas: loaded.colodas,
            users: users,
          );
        } catch (e) {
          yield const ExchangeState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
