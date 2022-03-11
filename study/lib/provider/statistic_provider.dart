import 'package:study/models/statistic.dart';
import 'package:study/resourses/statistic_methods.dart';

class StatisticProvider {
  final StatisticMethods statisticMethods = StatisticMethods();

  Future<StatisticColod> getStatisticColod({
    required String colodId,
  }) async {
    return await statisticMethods.getStatisticColod(
      colodId: colodId,
    );
  }

  Future<String> updateStatisticColod({
    required StatisticColod statisticColod,
    required String colodId,
  }) async {
    String res = await statisticMethods.updateStatisticColod(
      statisticColod: statisticColod,
      colodId: colodId,
    );
    return res;
  }

  Future<List<StatisticColod>> getUserStat({String? uid}) async {
    List<StatisticColod> res = await statisticMethods.getUserStat(uid: uid);
    return res;
  }
}
