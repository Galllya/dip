import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:study/models/coloda/card.dart';

class DailyCard {
  final Card? card;
  final int? position;
  final String? id;
  final DateTime? lastTrain;

  const DailyCard({
    this.card,
    this.position,
    this.id,
    this.lastTrain,
  });

  Map<String, dynamic> toJson() => {
        "card": card!.toJson(),
        "position": position,
        "id": id,
        "lastTrain": Timestamp.fromDate(lastTrain!),
      };

  static DailyCard fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    Card card = Card(
      term: snapshot["card"]['term'],
      definition: snapshot["card"]['definition'],
    );
    return DailyCard(
      card: card,
      position: snapshot["position"],
      id: snapshot["id"],
      lastTrain: (snapshot["lastTrain"] as Timestamp).toDate(),
    );
  }
}
