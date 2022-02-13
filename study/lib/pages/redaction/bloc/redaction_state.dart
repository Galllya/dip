part of 'redaction_bloc.dart';

@freezed
class RedactionState with _$RedactionState {
  const factory RedactionState.initial() = _Initial;
  const factory RedactionState.loading() = _Loading;
  const factory RedactionState.success() = _Success;
  const factory RedactionState.error({
    String? error,
  }) = _Error;
  const factory RedactionState.normal({
    @Default(false) bool shodStart,
  }) = _Normal;
}
