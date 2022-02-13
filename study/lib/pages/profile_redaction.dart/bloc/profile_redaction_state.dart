part of 'profile_redaction_bloc.dart';

@freezed
class ProfileRedactionState with _$ProfileRedactionState {
  const factory ProfileRedactionState.initial() = _Initial;
  const factory ProfileRedactionState.loading() = _Loading;
  const factory ProfileRedactionState.success() = _Success;
  const factory ProfileRedactionState.error({
    String? error,
  }) = _Error;
  const factory ProfileRedactionState.normal({
    @Default(false) bool shodStart,
  }) = _Normal;
}
