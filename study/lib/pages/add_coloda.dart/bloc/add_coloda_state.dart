part of 'add_coloda_bloc.dart';

@freezed
class AddColodaState with _$AddColodaState {
  const factory AddColodaState.initial() = _Initial;
  const factory AddColodaState.loading() = _Loading;
  const factory AddColodaState.success() = _Success;
  const factory AddColodaState.error({
    String? error,
  }) = _Error;
  const factory AddColodaState.normal({
    @Default(false) bool shodStart,
    @Default(false) bool showModal,
  }) = _Normal;
}
