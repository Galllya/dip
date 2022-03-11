import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String? text;
  final String? author;
  final DateTime? time;

  const Message({
    this.text,
    this.author,
    this.time,
  });

  Map<String, dynamic> toJson() => {
        "text": text,
        "author": author,
        "time": Timestamp.fromDate(time!),
      };

  static Message fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Message(
      text: snapshot["text"],
      author: snapshot["author"],
      time: (snapshot["time"] as Timestamp).toDate(),
    );
  }
}
