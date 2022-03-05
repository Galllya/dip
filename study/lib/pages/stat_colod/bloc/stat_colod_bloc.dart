import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_colod_event.dart';
part 'stat_colod_state.dart';
part 'stat_colod_bloc.freezed.dart';

class StatColodBloc extends Bloc<StatColodEvent, StatColodState> {
  StatColodBloc() : super(_Initial());
}
