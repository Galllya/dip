import 'package:cloud_firestore/cloud_firestore.dart';

class Folow {
  final List<String>? folow;

  const Folow({
    this.folow,
  });

  Map<String, dynamic> toJson() => {
        "subscrip": folow,
      };

  static Folow fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Folow(
      folow: snapshot["folow"],
    );
  }
}
