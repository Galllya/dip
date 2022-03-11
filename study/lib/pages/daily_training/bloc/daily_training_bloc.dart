import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_training_event.dart';
part 'daily_training_state.dart';
part 'daily_training_bloc.freezed.dart';

class DailyTrainingBloc extends Bloc<DailyTrainingEvent, DailyTrainingState> {
  DailyTrainingBloc() : super(_Initial());
}
