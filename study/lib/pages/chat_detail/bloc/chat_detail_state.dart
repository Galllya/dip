part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState.initial() = _Initial;
  const factory ChatDetailState.loading() = _Loading;
  const factory ChatDetailState.success() = _Success;
  const factory ChatDetailState.error({
    String? error,
  }) = _Error;
}
