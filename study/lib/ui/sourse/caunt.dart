import 'package:study/models/statistic.dart';

class Caunt {
  int allTime(StatisticColod stat) {
    return (stat.cards ?? 0) +
        (stat.memo ?? 0) +
        (stat.choice ?? 0) +
        (stat.join ?? 0) +
        (stat.wtite ?? 0) +
        (stat.test ?? 0);
  }
}
