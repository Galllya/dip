import 'package:cloud_firestore/cloud_firestore.dart';

class Folowers {
  final List<String>? folow;
  final int? points;
  final int? realPoints;

  const Folowers({
    this.folow,
    this.points,
    this.realPoints,
  });

  Map<String, dynamic> toJson() => {
        "subscribers": folow,
        "points": points,
        "realPoints": realPoints,
      };

  static Folowers fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Folowers(
      folow: snapshot["folow"],
      points: snapshot["points"],
      realPoints: snapshot["realPoints"],
    );
  }
}
