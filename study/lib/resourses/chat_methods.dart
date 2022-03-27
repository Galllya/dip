import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/chat.dart';
import 'package:study/models/message.dart';
import 'package:uuid/uuid.dart';

class ChatMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<String> writeMessage({
    required String text,
    required String uid,
    required String nameCur,
    required String imageCur,
    required String nameAnot,
    required String imageAnot,
  }) async {
    User currentUser = auth.currentUser!;

    String res = '';
    try {
      Message message = Message(
        text: text,
        author: currentUser.uid,
        time: DateTime.now(),
      );

      String docId = '';

      if (uid.compareTo(currentUser.uid) == 1) {
        docId = uid + '%' + currentUser.uid;
      } else {
        docId = currentUser.uid + '%' + uid;
      }

      List<String> users = [];
      users.add(uid);
      users.add(currentUser.uid);
      List<String> user1 = [];
      user1.add(nameAnot);
      user1.add(imageAnot);
      List<String> user2 = [];
      user2.add(nameCur);
      user2.add(imageCur);
      Chat chat = Chat(
        users: users,
        text: text,
        time: DateTime.now(),
        user1: user1,
        user2: user2,
      );
      String mesId = const Uuid().v1();

      await fireStore.collection('chat').doc(docId).set(chat.toJson());

      await fireStore
          .collection('chat')
          .doc(docId)
          .collection('message')
          .doc(mesId)
          .set(message.toJson());

      res = 'success';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Stream readMessages({
    required String uid,
  }) {
    User currentUser = auth.currentUser!;

    String docId = '';

    if (uid.compareTo(currentUser.uid) == 1) {
      docId = uid + '%' + currentUser.uid;
    } else {
      docId = currentUser.uid + '%' + uid;
    }
    return fireStore
        .collection('chat')
        .doc(docId)
        .collection('message')
        .orderBy("time", descending: true)
        .snapshots();
  }

  Stream readAll() {
    User currentUser = auth.currentUser!;

    return fireStore
        .collection('chat')
        .orderBy("time", descending: true)
        .where('users', arrayContains: currentUser.uid)
        .snapshots();
  }
}
