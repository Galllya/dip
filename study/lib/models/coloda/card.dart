import 'package:cloud_firestore/cloud_firestore.dart';

class Card {
  final String? term;
  final String? definition;

  const Card({
    this.term,
    this.definition,
  });

  Map<String, dynamic> toJson() => {
        "term": term,
        "definition": definition,
      };

  static Card fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Card(
      term: snapshot["term"],
      definition: snapshot["definition"],
    );
  }
}
