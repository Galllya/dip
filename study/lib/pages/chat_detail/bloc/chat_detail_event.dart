part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.started() = _Started;
  const factory ChatDetailEvent.writeMessage(
    String text,
    String uid,
    String nameCur,
    String imageCur,
    String nameAnot,
    String imageAnot,
  ) = _WriteMessage;
}
