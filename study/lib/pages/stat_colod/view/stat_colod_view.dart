import 'package:flutter/material.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class StatColodView extends StatelessWidget {
  const StatColodView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = <ChartData>[
      ChartData('Карт.', 35),
      ChartData('Зауч.', 28),
      ChartData('Соед.', 34),
      ChartData('Выбор', 32),
      ChartData('Письмо', 40),
      ChartData('Тест', 44),
    ];
    final List<ChartData> chartDataCirc = [
      ChartData('Хорошо', 38),
      ChartData('Плохо', 34),
      ChartData('Отлично', 10)
    ];
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Затраченное время (мин)',
              style: getBoldTextStyle(),
            ),
          ),
          SizedBox(
              height: 400,
              child: SfCartesianChart(
                  palette: const [primaryColor],
                  primaryXAxis: CategoryAxis(),
                  series: <CartesianSeries>[
                    ColumnSeries<ChartData, String>(
                        dataSource: chartData,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y),
                  ])),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Резуальтаты режима: "Тесты"',
            style: getBoldTextStyle(),
          ),
          Center(
              child: SfCircularChart(legend: Legend(isVisible: true), palette: [
            primaryColor,
            gentlyPrimaryColor,
            greenColor,
          ], series: <CircularSeries<ChartData, String>>[
            PieSeries<ChartData, String>(
              dataSource: chartDataCirc,
              emptyPointSettings:
                  EmptyPointSettings(mode: EmptyPointMode.average),
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            )
          ]))
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
