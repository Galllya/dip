import 'package:cloud_firestore/cloud_firestore.dart';

class StatisticColod {
  final int? cards;
  final int? memo;
  final int? join;
  final int? choice;
  final int? wtite;
  final int? test;
  final int? goodTest;
  final int? bedTest;
  final int? coolTest;

  const StatisticColod({
    this.cards,
    this.memo,
    this.join,
    this.choice,
    this.wtite,
    this.test,
    this.goodTest,
    this.bedTest,
    this.coolTest,
  });

  Map<String, dynamic> toJson() => {
        "cards": cards,
        "memo": memo,
        "join": join,
        "choice": choice,
        "wtite": wtite,
        "test": test,
        "goodTest": goodTest,
        "bedTest": bedTest,
        "coolTest": coolTest,
      };

  static StatisticColod fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return StatisticColod(
      cards: snapshot["cards"],
      memo: snapshot["memo"],
      join: snapshot["join"],
      choice: snapshot["choice"],
      wtite: snapshot["wtite"],
      test: snapshot["test"],
      goodTest: snapshot["goodTest"],
      bedTest: snapshot["bedTest"],
      coolTest: snapshot["coolTest"],
    );
  }
}
