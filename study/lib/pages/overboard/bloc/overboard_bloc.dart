import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overboard_event.dart';
part 'overboard_state.dart';
part 'overboard_bloc.freezed.dart';

class OverboardBloc extends Bloc<OverboardEvent, OverboardState> {
  OverboardBloc() : super(const _Initial());
}
