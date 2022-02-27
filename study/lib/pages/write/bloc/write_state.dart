part of 'write_bloc.dart';

@freezed
class WriteState with _$WriteState {
  const factory WriteState.initial({
    @Default(false) bool show,
  }) = _Initial;
}
