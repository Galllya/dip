import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/coloda_provider.dart';

part 'exchange_user_event.dart';
part 'exchange_user_state.dart';
part 'exchange_user_bloc.freezed.dart';

class ExchangeUserBloc extends Bloc<ExchangeUserEvent, ExchangeUserState> {
  final ColodaProvider colodaProvider;
  final UserProvider userProvider;
  ExchangeUserBloc({
    required this.colodaProvider,
    required this.userProvider,
  }) : super(const _Initial());
  @override
  Stream<ExchangeUserState> mapEventToState(
    ExchangeUserEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        folow: _folow,
      );

  Stream<ExchangeUserState> _started(String uid) async* {
    yield const ExchangeUserState.initial();
    yield* _load(uid);
  }

  Stream<ExchangeUserState> _load(String uid) async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ExchangeUserState.loading();

        try {
          final colodas = await colodaProvider.getColodsForUser(uid: uid);
          yield ExchangeUserState.loaded(
            colodas: colodas,
          );
        } catch (e) {
          yield const ExchangeUserState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ExchangeUserState> _folow(
    String anotherUserUID,
    List<String> anotherUserSubscribers,
    List<String> curUserSubscrip,
  ) async* {
    yield* state.maybeMap(
      loaded: (loadedState) async* {
        yield ExchangeUserState.loaded(
          colodas: loadedState.colodas,
          idFollowingProccess: true,
        );
        try {
          await userProvider.folow(
            anotherUserUID: anotherUserUID,
            anotherUserSubscribers: anotherUserSubscribers,
            curUserSubscrip: curUserSubscrip,
          );
          yield ExchangeUserState.loaded(
              colodas: loadedState.colodas,
              idFollowingProccess: false,
              isFollowSuccess: true);
        } catch (e) {
          yield ExchangeUserState.loaded(
            colodas: loadedState.colodas,
            idFollowingProccess: false,
            isFollowSuccess: false,
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
