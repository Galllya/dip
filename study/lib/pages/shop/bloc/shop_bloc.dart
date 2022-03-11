import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/provider/account_provider.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final UserProvider userProvider;
  ShopBloc({
    required this.userProvider,
  }) : super(const _Initial());
  @override
  Stream<ShopState> mapEventToState(
    ShopEvent event,
  ) =>
      event.when(
        started: _started,
        buy: _buy,
        back: _back,
      );

  Stream<ShopState> _started(int points, List<bool> buied) async* {
    yield const ShopState.initial();
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield ShopState.load(
          points: points,
          buied: buied,
        );
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ShopState> _back() async* {
    yield* state.maybeMap(
      load: (loadState) async* {
        await userProvider.shop(
            realPoints: loadState.points!, buied: loadState.buied!);
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<ShopState> _buy(int minusPoints, int index) async* {
    yield* state.maybeMap(
      load: (loadState) async* {
        List<bool> buiedNow = loadState.buied!;
        buiedNow[index] = true;
        yield ShopState.load(
            points: loadState.points! - minusPoints, buied: buiedNow);
      },
      orElse: () => Stream.value(state),
    );
  }
}
