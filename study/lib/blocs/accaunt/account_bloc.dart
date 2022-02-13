import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/models/app_user.dart';
import 'package:study/provider/account_provider.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final UserProvider userProvider;
  AccountBloc({
    required this.userProvider,
  }) : super(const _Initial());
  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<AccountState> _started() async* {
    yield const AccountState.initial();
  }

  Stream<AccountState> _load() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const AccountState.loading();

        try {
          final AppUser user = await userProvider.getUser();
          yield AccountState.loaded(
            user: user,
          );
        } catch (e) {
          yield const AccountState.error(error: 'Произошла ошибка');
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
