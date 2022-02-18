import 'package:cloud_firestore/cloud_firestore.dart';

class AnotherUser {
  final String? userName;
  final String? uid;
  final String? photoURL;
  final bool? writeCanAll;
  final bool? statCanSeeEvery;
  final int? points;
  const AnotherUser({
    this.photoURL,
    this.uid,
    this.userName,
    this.writeCanAll,
    this.statCanSeeEvery,
    this.points,
  });

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "uid": uid,
        "photoURL": photoURL,
        "writeCanAll": writeCanAll,
        "statCanSeeEvery": statCanSeeEvery,
        "points": points,
      };

  static AnotherUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return AnotherUser(
      photoURL: snapshot["photoURL"],
      uid: snapshot["uid"],
      userName: snapshot["userName"],
      writeCanAll: snapshot["writeCanAll"] as bool,
      points: snapshot["points"] as int,
      statCanSeeEvery: snapshot["statCanSeeEvery"] as bool,
    );
  }
}
