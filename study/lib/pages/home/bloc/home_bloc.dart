import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Initial());
  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) =>
      event.when(
        started: _started,
      );

  Stream<HomeState> _started() async* {
    yield const HomeState.initial();
  }
}
