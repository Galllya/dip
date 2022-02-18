import 'package:cloud_firestore/cloud_firestore.dart';

class Folowers {
  final List<String>? folow;

  const Folowers({
    this.folow,
  });

  Map<String, dynamic> toJson() => {
        "subscribers": folow,
      };

  static Folowers fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Folowers(
      folow: snapshot["folow"],
    );
  }
}
