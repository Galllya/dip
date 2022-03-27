import 'package:study/models/coloda/card.dart';
import 'package:study/resourses/training_methods.dart';

import '../models/daile.dart';
import '../models/daile_card.dart';

class TrainingProvider {
  final TrainingMethods trainingMethods = TrainingMethods();

  Future putCards({
    required List<Card> cards,
  }) async {
    return await trainingMethods.putCards(cards: cards);
  }

  Stream getCards() {
    return trainingMethods.getCards();
  }

  Future deleteCards({
    required List<String> cards,
  }) async {
    return await trainingMethods.deleteCards(cards: cards);
  }

  Future<Daily> getDaily() async {
    return await trainingMethods.getDaily();
  }

  Stream getCardsNowTrain() {
    return trainingMethods.getCardsNowTrain();
  }

  Future updateCards({
    required List<DailyCard> cards,
  }) async {
    return trainingMethods.updateCards(cards: cards);
  }
}
