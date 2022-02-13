import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  final String? userName;
  final String? uid;
  final String? email;
  final String? photoURL;
  const AppUser({
    this.email,
    this.photoURL,
    this.uid,
    this.userName,
  });

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "uid": uid,
        "email": email,
        "photoURL": photoURL,
      };

  static AppUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return AppUser(
        email: snapshot["email"],
        photoURL: snapshot["photoURL"],
        uid: snapshot["uid"],
        userName: snapshot["userName"]);
  }
}
