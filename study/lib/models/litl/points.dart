import 'package:cloud_firestore/cloud_firestore.dart';

class Points {
  final int points;
  final int realPoints;

  const Points({
    required this.points,
    required this.realPoints,
  });

  Map<String, dynamic> toJson() => {
        "points": points,
        "realPoints": realPoints,
      };

  static Points fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Points(
      points: snapshot["points"],
      realPoints: snapshot["realPoints"],
    );
  }
}
