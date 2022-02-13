part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded({
    @Default(false) isLogOutProcess,
    bool? isLogOutSuccses,
    @Default(false) isUpdateProcess,
    bool? isUpdateSucces,
  }) = _Loaded;
  const factory ProfileState.error({
    String? error,
  }) = _Error;
}
