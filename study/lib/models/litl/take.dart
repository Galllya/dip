import 'package:cloud_firestore/cloud_firestore.dart';

class Take {
  final int youTake;
  final int anotherUserTake;
  final int points;
  final int realPoints;

  const Take({
    required this.youTake,
    required this.anotherUserTake,
    required this.points,
    required this.realPoints,
  });

  Map<String, dynamic> toJson() => {
        "youTake": youTake,
        "anotherUserTake": anotherUserTake,
        "points": points,
        "realPoints": realPoints,
      };

  static Take fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Take(
      youTake: snapshot["youTake"],
      anotherUserTake: snapshot["anotherUserTake"],
      points: snapshot["points"],
      realPoints: snapshot["realPoints"],
    );
  }
}
