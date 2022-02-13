part of 'colod_bloc.dart';

@freezed
class ColodState with _$ColodState {
  const factory ColodState.initial() = _Initial;
  const factory ColodState.loading() = _Loading;
  const factory ColodState.loaded({
    required DetailColoda coloda,
    @Default(false) bool isUpdating,
    bool? isSuccses,
    @Default(false) bool isDeleteProccess,
    bool? isDeleteSuccess,
  }) = _Loaded;
  const factory ColodState.error({
    String? error,
  }) = _Error;
}
