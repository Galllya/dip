import 'package:cloud_firestore/cloud_firestore.dart';

class Daily {
  final DateTime? lastTrain;

  const Daily({
    this.lastTrain,
  });

  Map<String, dynamic> toJson() => {
        "lastTrain": Timestamp.fromDate(lastTrain!),
      };

  static Daily fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Daily(
      lastTrain: (snapshot["lastTrain"] as Timestamp).toDate(),
    );
  }
}
