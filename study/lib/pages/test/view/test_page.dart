import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/statistic.dart';
import 'package:study/pages/test/bloc/test_bloc.dart';
import 'package:study/pages/test/view/test_view.dart';
import 'package:study/provider/statistic_provider.dart';

class TestPage extends StatefulWidget {
  final List<model.Card> cards;
  final String colodId;

  const TestPage({
    Key? key,
    required this.cards,
    required this.colodId,
  }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late TestBloc testBloc;
  late DateTime timeNow;

  @override
  void initState() {
    super.initState();
    timeNow = DateTime.now();

    testBloc = TestBloc(statisticProvider: context.read<StatisticProvider>());
  }

  @override
  void dispose() {
    testBloc.add(TestEvent.resSend(
        StatisticColod(test: DateTime.now().difference(timeNow).inMinutes),
        widget.colodId));
    testBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestBloc>.value(
      value: testBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Тест'),
          actions: [
            IconButton(
                onPressed: () {
                  testBloc.add(const TestEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: TestView(
          sendRes: (int res) {
            if (res == 1) {
              testBloc.add(TestEvent.resSend(
                  const StatisticColod(bedTest: 1), widget.colodId));
            }
            if (res == 2) {
              testBloc.add(TestEvent.resSend(
                  const StatisticColod(goodTest: 1), widget.colodId));
            }
            if (res == 3) {
              testBloc.add(TestEvent.resSend(
                  const StatisticColod(coolTest: 1), widget.colodId));
            }
          },
          cards: widget.cards,
        ),
      ),
    );
  }
}
