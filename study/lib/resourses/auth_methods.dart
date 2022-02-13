import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/app_user.dart';
import 'package:study/resourses/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<AppUser> getUserDetails() async {
    User currentUser = auth.currentUser!;

    DocumentSnapshot snap =
        await fireStore.collection('users').doc(currentUser.uid).get();

    return AppUser.fromSnap(snap);
  }

  Future<String> signUpUser({
    required String email,
    required String password,
    required String userName,
    Uint8List? file,
  }) async {
    String res = "";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          userName.isNotEmpty ||
          file != null) {
        UserCredential cred = await auth.createUserWithEmailAndPassword(
            email: email, password: password);

        String photoURL = '';
        if (file != null) {
          photoURL = await StorageMethods().uploadImageToStorage(
            childName: 'profilePics',
            file: file,
          );
        }

        AppUser user = AppUser(
          userName: userName,
          uid: cred.user!.uid,
          email: email,
          photoURL: photoURL,
        );

        await fireStore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());

        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        res = 'Почта введана в неверном формате';
      } else if (err.code == "weak-password") {
        res = 'Пароль слишком коротки';
      } else if (err.code == "email-already-in-use") {
        res = 'Данная почта уже используется';
      }
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = '';

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        res = "success";
      } else {
        res = "Проверьте правильность заполнения полей";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'too-many-requests') {
        res = 'Неправильно введен логин или пароль';
      }
      if (err.code == 'user-not-found') {
        res = 'Пользователь не найден';
      }
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }
}
