import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  final List<String>? users;
  final String? text;
  final DateTime? time;
  final List<String>? user1;
  final List<String>? user2;

  const Chat({
    this.text,
    this.users,
    this.time,
    this.user1,
    this.user2,
  });

  Map<String, dynamic> toJson() => {
        "text": text,
        "users": users,
        "user1": user1,
        "user2": user2,
        "time": Timestamp.fromDate(time!),
      };

  static Chat fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    List<String> usersAsList = [];

    if (snapshot["users"] != null) {
      for (var element in (snapshot["users"] as List<dynamic>)) {
        usersAsList.add(element);
      }
    }
    List<String> user1AsList = [];

    if (snapshot["user1"] != null) {
      for (var element in (snapshot["user1"] as List<dynamic>)) {
        user1AsList.add(element);
      }
    }
    List<String> user2AsList = [];

    if (snapshot["user2"] != null) {
      for (var element in (snapshot["user2"] as List<dynamic>)) {
        user2AsList.add(element);
      }
    }
    return Chat(
      text: snapshot["text"],
      users: usersAsList,
      user1: user1AsList,
      user2: user2AsList,
      time: (snapshot["time"] as Timestamp).toDate(),
    );
  }
}
