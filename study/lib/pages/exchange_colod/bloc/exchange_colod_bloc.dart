import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_colod_event.dart';
part 'exchange_colod_state.dart';
part 'exchange_colod_bloc.freezed.dart';

class ExchangeColodBloc extends Bloc<ExchangeColodEvent, ExchangeColodState> {
  ExchangeColodBloc() : super(_Initial());
}
