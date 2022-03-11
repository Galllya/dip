import 'package:cloud_firestore/cloud_firestore.dart';

class AnotherUser {
  final String? userName;
  final String? uid;
  final String? photoURL;
  final bool? writeCanAll;
  final bool? statCanSeeEvery;
  final int? points;
  final int? realPoints;
  final int? youTake;
  final int? anotherUserTake;
  final List<String>? subscribers;

  const AnotherUser({
    this.photoURL,
    this.uid,
    this.userName,
    this.writeCanAll,
    this.statCanSeeEvery,
    this.points,
    this.realPoints,
    this.anotherUserTake,
    this.youTake,
    this.subscribers,
  });

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "uid": uid,
        "photoURL": photoURL,
        "writeCanAll": writeCanAll,
        "statCanSeeEvery": statCanSeeEvery,
        "points": points,
        "realPoints": realPoints,
        "anotherUserTake": anotherUserTake,
        "youTake": youTake,
        "subscribers": subscribers,
      };

  static AnotherUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    List<String> subscribersAsList = [];

    if (snapshot["subscribers"] != null) {
      for (var element in (snapshot["subscribers"] as List<dynamic>)) {
        subscribersAsList.add(element);
      }
    }
    return AnotherUser(
      photoURL: snapshot["photoURL"],
      uid: snapshot["uid"],
      userName: snapshot["userName"],
      writeCanAll: snapshot["writeCanAll"] as bool,
      points: snapshot["points"] as int,
      realPoints: snapshot["realPoints"] as int,
      statCanSeeEvery: snapshot["statCanSeeEvery"] as bool,
      youTake: snapshot["youTake"] as int,
      anotherUserTake: snapshot["anotherUserTake"] as int,
      subscribers: subscribersAsList,
    );
  }
}
