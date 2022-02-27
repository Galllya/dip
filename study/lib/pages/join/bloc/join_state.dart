part of 'join_bloc.dart';

@freezed
class JoinState with _$JoinState {
  const factory JoinState.initial({
    @Default(false) bool show,
  }) = _Initial;
}
