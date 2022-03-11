import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/stat_colod/bloc/stat_colod_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/loading_custom.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class StatColodView extends StatelessWidget {
  const StatColodView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatColodBloc, StatColodState>(
      builder: (BuildContext context, StatColodState state) {
        return state.maybeWhen(
            orElse: () {
              return const SizedBox();
            },
            initial: () => const LoadingCustom(),
            error: (error) {
              return const Text('Произошла ошибка');
            },
            loaded: (stat) {
              final List<ChartData> chartData = <ChartData>[
                ChartData('Карт.', stat.cards!),
                ChartData('Зауч.', stat.memo!),
                ChartData('Соед.', stat.join!),
                ChartData('Выбор', stat.choice!),
                ChartData('Письмо', stat.wtite!),
                ChartData('Тест', stat.test!),
              ];
              bool emptOne = false;
              if (chartData.where((element) => element.y != 0).isEmpty) {
                emptOne = true;
              }
              final List<ChartData> chartDataCirc = [
                ChartData('Хорошо', stat.goodTest!),
                ChartData('Плохо', stat.bedTest!),
                ChartData('Отлично', stat.coolTest!)
              ];
              bool emptTwo = false;
              if (chartDataCirc.where((element) => element.y != 0).isEmpty) {
                emptTwo = true;
              }
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Затраченное время (мин)',
                      style: getBoldTextStyle(),
                    ),
                  ),
                  emptOne
                      ? const Center(
                          child: Text(
                            'данной статистики пока нет',
                            style: TextStyle(color: primaryColor),
                          ),
                        )
                      : SizedBox(
                          height: 400,
                          child: SfCartesianChart(
                              palette: const [primaryColor],
                              primaryXAxis: CategoryAxis(),
                              series: <CartesianSeries>[
                                ColumnSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) =>
                                        data.y),
                              ])),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Резуальтаты режима: "Тесты"',
                    style: getBoldTextStyle(),
                  ),
                  emptTwo
                      ? const Center(
                          child: Text(
                            'данной статистики пока нет',
                            style: TextStyle(color: primaryColor),
                          ),
                        )
                      : Center(
                          child: SfCircularChart(
                              legend: Legend(isVisible: true),
                              palette: [
                              primaryColor,
                              gentlyPrimaryColor,
                              greenColor,
                            ],
                              series: <CircularSeries<ChartData, String>>[
                              PieSeries<ChartData, String>(
                                dataSource: chartDataCirc,
                                emptyPointSettings: EmptyPointSettings(
                                    mode: EmptyPointMode.average),
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                              )
                            ]))
                ],
              );
            });
      },
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int? y;
}
