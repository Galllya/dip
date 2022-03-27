import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/statistic.dart';
import 'package:study/pages/memorization/bloc/memorization_bloc.dart';
import 'package:study/pages/memorization/view/memorization_view.dart';
import 'package:study/provider/statistic_provider.dart';

class MemorizationPage extends StatefulWidget {
  final List<model.Card> cards;
  final String colodId;

  const MemorizationPage({
    Key? key,
    required this.cards,
    required this.colodId,
  }) : super(key: key);

  @override
  State<MemorizationPage> createState() => _MemorizationPageState();
}

class _MemorizationPageState extends State<MemorizationPage> {
  late MemorizationBloc memorizationBloc;
  late DateTime timeNow;
  Intro intro = Intro(
    stepCount: 8,
    maskClosable: true,
    widgetBuilder: StepWidgetBuilder.useDefaultTheme(
      texts: [
        'В данном режиме ваша задача запомнить все карточки. Вы должны самостоятельно оценить, знаете ли вы термин. Будьте честными!',
        'Нажмите на карточку - чтобы увидеть правильный ответ',
        'Нажмите на галочки - если вы знаете ответ',
        'Нажмите на крестик - если вы не знаете ответ',
        'Здесь карточки, к изучению которых вы пока не преступили. Вы их еще не видели',
        'Это карточки, которые вы сейчас изучаете, которые уже могут вам попасться. Они в ограниченном колличестве - пока не усвоите старые, новые не появится',
        'Здесь карточки, которые вы уже изучили, т.е. дали на них правильный ответ нужное число раз. Режим завершиться, когда все карточки будут пройдеными!',
        'В настройках можно выбрать:  показывать сначало термин или определение. А также начать все сначала'
      ],
      buttonTextBuilder: (currPage, totalPage) {
        return currPage < totalPage - 1 ? 'следующая' : 'закончить';
      },
    ),
  );

  @override
  void initState() {
    super.initState();
    timeNow = DateTime.now();

    memorizationBloc =
        MemorizationBloc(statisticProvider: context.read<StatisticProvider>());
  }

  @override
  void dispose() {
    memorizationBloc.add(MemorizationEvent.resSend(
        StatisticColod(memo: DateTime.now().difference(timeNow).inMinutes),
        widget.colodId));

    memorizationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MemorizationBloc>.value(
      value: memorizationBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Заучивание',
            key: intro.keys[0],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Timer(
                  const Duration(
                    milliseconds: 500,
                  ),
                  () {
                    intro.start(context);
                  },
                );
              },
              icon: const Icon(
                Icons.question_mark,
              ),
            ),
            IconButton(
                key: intro.keys[7],
                onPressed: () {
                  memorizationBloc.add(const MemorizationEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: MemorizationView(
          cards: widget.cards,
          intro: intro,
        ),
      ),
    );
  }
}
