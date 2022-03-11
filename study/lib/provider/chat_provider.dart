import 'package:study/resourses/chat_methods.dart';

class ChatProvider {
  final ChatMethods chatMethods = ChatMethods();

  Future<String> writeMessage({
    required String text,
    required String uid,
    required String nameCur,
    required String imageCur,
    required String nameAnot,
    required String imageAnot,
  }) async {
    return await chatMethods.writeMessage(
      text: text,
      uid: uid,
      nameAnot: nameAnot,
      imageAnot: imageAnot,
      nameCur: nameCur,
      imageCur: imageCur,
    );
  }

  Stream readMessages({
    required String uid,
  }) {
    return chatMethods.readMessages(uid: uid);
  }

  Stream readAll() {
    return chatMethods.readAll();
  }
}
