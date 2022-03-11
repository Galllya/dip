import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  final String? userName;
  final String? uid;
  final String? email;
  final String? photoURL;
  final bool? showEvery;
  final bool? writeCanAll;
  final bool? statCanSeeEvery;
  final List<String>? subscrip;
  final List<String>? subscribers;
  final int? points;
  final String? description;
  final String? gender;
  final DateTime? dateBirth;
  final String? uni;
  final String? work;
  final int? realPoints;
  final int? youTake;
  final int? anotherUserTake;
  final List<bool>? buyed;

  const AppUser({
    this.email,
    this.photoURL,
    this.uid,
    this.userName,
    this.subscrip,
    this.subscribers,
    this.showEvery,
    this.writeCanAll,
    this.statCanSeeEvery,
    this.points,
    this.description,
    this.gender,
    this.dateBirth,
    this.uni,
    this.work,
    this.realPoints,
    this.anotherUserTake,
    this.youTake,
    this.buyed,
  });

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "uid": uid,
        "email": email,
        "photoURL": photoURL,
        "subscrip": subscrip,
        "subscribers": subscribers,
        "showEvery": showEvery,
        "writeCanAll": writeCanAll,
        "statCanSeeEvery": statCanSeeEvery,
        "points": points,
        "realPoints": realPoints,
        "description": description,
        "gender": gender,
        "uni": uni,
        "anotherUserTake": anotherUserTake,
        "youTake": youTake,
        "work": work,
        "buyed": buyed,
        "dateBirth": dateBirth == null ? null : Timestamp.fromDate(dateBirth!),
      };

  static AppUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    List<String> subscripAsList = [];
    List<String> subscribersAsList = [];
    List<bool> sbuyedAsList = [];

    if (snapshot["subscrip"] != null) {
      for (var element in (snapshot["subscrip"] as List<dynamic>)) {
        subscripAsList.add(element);
      }
    }

    if (snapshot["buyed"] != null) {
      for (var element in (snapshot["buyed"] as List<dynamic>)) {
        sbuyedAsList.add(element);
      }
    }

    if (snapshot["subscribers"] != null) {
      for (var element in (snapshot["subscribers"] as List<dynamic>)) {
        subscribersAsList.add(element);
      }
    }
    return AppUser(
      email: snapshot["email"],
      photoURL: snapshot["photoURL"],
      uid: snapshot["uid"],
      userName: snapshot["userName"],
      subscrip: subscripAsList,
      subscribers: subscribersAsList,
      buyed: sbuyedAsList,
      showEvery: snapshot["showEvery"] as bool,
      writeCanAll: snapshot["writeCanAll"] as bool,
      points: snapshot["points"] as int,
      realPoints: snapshot["realPoints"] as int,
      youTake: snapshot["youTake"] as int,
      anotherUserTake: snapshot["anotherUserTake"] as int,
      statCanSeeEvery: snapshot["statCanSeeEvery"] as bool,
      description: snapshot["description"] as String,
      gender: snapshot["gender"] as String,
      uni: snapshot["uni"] as String,
      work: snapshot["work"] as String,
      dateBirth: (snapshot["dateBirth"] as Timestamp).toDate(),
    );
  }
}
