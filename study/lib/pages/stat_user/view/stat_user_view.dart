import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/stat_user/bloc/stat_user_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatUserView extends StatelessWidget {
  final AppUser? appUser;
  const StatUserView({
    Key? key,
    this.appUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatUserBloc, StatUserState>(
      builder: (BuildContext context, StatUserState state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          initial: () => const LoadingCustom(),
          error: (error) {
            return const Text('Произошла ошибка');
          },
          loaded: (stat) {
            int cards = 0;
            int memo = 0;
            int join = 0;
            int choice = 0;
            int wtite = 0;
            int test = 0;

            for (var element in stat) {
              cards += element.cards!;
              memo += element.memo!;
              join += element.join!;
              choice += element.choice!;
              wtite += element.wtite!;
              test += element.test!;
            }
            final List<ChartData> chartData = <ChartData>[
              ChartData('Карт.', cards),
              ChartData('Зауч.', memo),
              ChartData('Соед.', join),
              ChartData('Выбор', choice),
              ChartData('Письмо', wtite),
              ChartData('Тест', test),
            ];
            bool emptOne = false;
            if (cards == 0 &&
                memo == 0 &&
                join == 0 &&
                choice == 0 &&
                wtite == 0 &&
                test == 0) {
              emptOne = true;
            }
            int goodTest = 0;
            int bedTest = 0;
            int coolTest = 0;
            stat.forEach((element) {
              goodTest += element.goodTest!;
              bedTest += element.bedTest!;
              coolTest += element.coolTest!;
            });
            final List<ChartData> chartDataCirc = [
              ChartData('Хорошо', goodTest),
              ChartData('Плохо', bedTest),
              ChartData('Отлично', coolTest)
            ];
            bool emptTwo = false;
            if (goodTest == 0 && bedTest == 0 && coolTest == 0) {
              emptTwo = true;
            }
            List<ChartData> chartDataCopy = [];
            List<ChartData> chartDataCircPoints = [];
            if (appUser != null) {
              chartDataCopy = <ChartData>[
                ChartData('Вы', appUser!.youTake),
                ChartData('У вас', appUser!.anotherUserTake),
              ];
              chartDataCircPoints = [
                ChartData('Есть', appUser!.realPoints),
                ChartData(
                    'Потраченные', (appUser!.points! - appUser!.realPoints!)),
              ];
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
                                  yValueMapper: (ChartData data, _) => data.y),
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
                          ])),
                if (appUser != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Копирование колод',
                          style: getBoldTextStyle(),
                        ),
                      ),
                      (appUser!.youTake == 0 && appUser!.anotherUserTake == 0)
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
                                        dataSource: chartDataCopy,
                                        xValueMapper: (ChartData data, _) =>
                                            data.x,
                                        yValueMapper: (ChartData data, _) =>
                                            data.y),
                                  ])),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Баллы',
                        style: getBoldTextStyle(),
                      ),
                      appUser!.points == 0
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
                                    dataSource: chartDataCircPoints,
                                    emptyPointSettings: EmptyPointSettings(
                                        mode: EmptyPointMode.average),
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                  )
                                ])),
                    ],
                  )
              ],
            );
          },
        );
      },
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int? y;
}
