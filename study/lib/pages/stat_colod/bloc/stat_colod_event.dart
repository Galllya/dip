part of 'stat_colod_bloc.dart';

@freezed
class StatColodEvent with _$StatColodEvent {
  const factory StatColodEvent.started(String colodId) = _Started;
  const factory StatColodEvent.load(String colodId) = _Load;
}
