import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/daile.dart';
import 'package:study/models/daile_card.dart';
import 'package:uuid/uuid.dart';

class TrainingMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future putCards({
    required List<model.Card> cards,
  }) async {
    User currentUser = auth.currentUser!;

    for (var element in cards) {
      String cardId = const Uuid().v1();
      DailyCard dailyCard = DailyCard(
        card: element,
        position: 0,
        id: cardId,
        lastTrain: DateTime(1000, 1, 1),
      );
      await fireStore
          .collection('daily')
          .doc(currentUser.uid)
          .collection('cards')
          .doc(cardId)
          .set(dailyCard.toJson());
    }
  }

  Stream getCards() {
    User currentUser = auth.currentUser!;

    return fireStore
        .collection('daily')
        .doc(currentUser.uid)
        .collection('cards')
        .snapshots();
  }

  Stream getCardsNowTrain() {
    User currentUser = auth.currentUser!;

    return fireStore
        .collection('daily')
        .doc(currentUser.uid)
        .collection('cards')
        .where('position', isNotEqualTo: 4)
        .snapshots();
  }

  Future deleteCards({
    required List<String> cards,
  }) async {
    User currentUser = auth.currentUser!;

    cards.forEach((element) async {
      await fireStore
          .collection('daily')
          .doc(currentUser.uid)
          .collection('cards')
          .doc(element)
          .delete();
    });
  }

  Future<Daily> getDaily() async {
    User currentUser = auth.currentUser!;
    dynamic a = await fireStore.collection('daily').doc(currentUser.uid).get();
    return Daily.fromSnap(a);
  }

  Future updateCards({
    required List<DailyCard> cards,
  }) async {
    User currentUser = auth.currentUser!;
    Daily daily = Daily(lastTrain: DateTime.now());
    cards.forEach((element) async {
      await fireStore
          .collection('daily')
          .doc(currentUser.uid)
          .collection('cards')
          .doc(element.id)
          .update(element.toJson());
    });
    await fireStore
        .collection('daily')
        .doc(currentUser.uid)
        .update(daily.toJson());
  }
}
