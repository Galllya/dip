import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/app_user.dart';
import 'package:study/models/litl/points.dart';
import 'package:study/models/statistic.dart';
import 'package:study/ui/sourse/caunt.dart';

class StatisticMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<String> updateStatisticColod({
    required StatisticColod statisticColod,
    required String colodId,
  }) async {
    String res = "";
    try {
      final statistic =
          await fireStore.collection('colodStatistic').doc(colodId).get();

      final StatisticColod statisticDet = StatisticColod.fromSnap(statistic);

      int newTime = Caunt().allTime(statisticColod);
      int K = 0;

      if (newTime > 0) {
        int timeSpend = Caunt().allTime(statisticDet);
        int N = timeSpend ~/ 60;
        int M = (newTime + timeSpend) ~/ 60;
        K = M - N;
      }

      StatisticColod statisticColodNew = StatisticColod(
        cards: (statisticColod.cards ?? 0) + statisticDet.cards!,
        memo: (statisticColod.memo ?? 0) + statisticDet.memo!,
        join: (statisticColod.join ?? 0) + statisticDet.join!,
        choice: (statisticColod.choice ?? 0) + statisticDet.choice!,
        wtite: (statisticColod.wtite ?? 0) + statisticDet.wtite!,
        test: (statisticColod.test ?? 0) + statisticDet.test!,
        goodTest: (statisticColod.goodTest ?? 0) + statisticDet.goodTest!,
        bedTest: (statisticColod.bedTest ?? 0) + statisticDet.bedTest!,
        coolTest: (statisticColod.coolTest ?? 0) + statisticDet.coolTest!,
        uid: statisticDet.uid!,
      );

      DocumentSnapshot meDat =
          await fireStore.collection('users').doc(statisticDet.uid).get();
      Points points = Points(
          points: AppUser.fromSnap(meDat).points! + K * 50,
          realPoints: AppUser.fromSnap(meDat).realPoints! + K * 50);
      await fireStore
          .collection('users')
          .doc(statisticDet.uid)
          .update(points.toJson());

      await fireStore
          .collection('colodStatistic')
          .doc(colodId)
          .update(statisticColodNew.toJson());

      res = 'succesfs';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<StatisticColod> getStatisticColod({
    required String colodId,
  }) async {
    final statistic =
        await fireStore.collection('colodStatistic').doc(colodId).get();

    final StatisticColod statisticDet = StatisticColod.fromSnap(statistic);
    return statisticDet;
  }

  Future<List<StatisticColod>> getUserStat({String? uid}) async {
    String currentUser = uid ?? auth.currentUser!.uid;
    List<StatisticColod> statisticUser = [];
    dynamic a;
    try {
      a = await fireStore
          .collection('colodStatistic')
          .where('uid', isEqualTo: currentUser)
          .get();

      for (var element in a.docChanges) {
        statisticUser.add(
          StatisticColod.fromSnap(element.doc),
        );
      }
    } catch (e) {}

    return statisticUser;
  }
}
