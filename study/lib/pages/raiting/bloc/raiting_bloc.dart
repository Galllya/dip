import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/another_user.dart';
import 'package:study/provider/account_provider.dart';

part 'raiting_event.dart';
part 'raiting_state.dart';
part 'raiting_bloc.freezed.dart';

class RaitingBloc extends Bloc<RaitingEvent, RaitingState> {
  final UserProvider userProvider;
  RaitingBloc({
    required this.userProvider,
  }) : super(const _Initial());
  @override
  Stream<RaitingState> mapEventToState(
    RaitingEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<RaitingState> _started() async* {
    yield const RaitingState.initial();
    yield* _load();
  }

  Stream<RaitingState> _load() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const RaitingState.loading();

        try {
          final usersPoints = await userProvider.getTopUsers(title: 'points');
          final usersHelp =
              await userProvider.getTopUsers(title: 'anotherUserTake');
          final usersSubs =
              await userProvider.getTopUsers(title: 'subscribers');
          yield RaitingState.loaded(
            usersPoints: usersPoints,
            usersHelp: usersHelp,
            usersSubs: usersSubs,
          );
        } catch (e) {
          yield const RaitingState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
