import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/statistic.dart';
import 'package:study/pages/choice/bloc/choice_bloc.dart';
import 'package:study/pages/choice/view/choice_view.dart';
import 'package:study/provider/statistic_provider.dart';

class ChoicePage extends StatefulWidget {
  final List<model.Card> cards;
  final String colodId;

  const ChoicePage({
    Key? key,
    required this.cards,
    required this.colodId,
  }) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  late ChoiceBloc choiceBloc;
  late DateTime timeNow;
  Intro intro = Intro(
    stepCount: 4,
    maskClosable: true,
    widgetBuilder: StepWidgetBuilder.useDefaultTheme(
      texts: [
        'В данном режиме вы можете потренироваться и проверить свои знания. Просто выбирайте правильный ответ!',
        'На карточки термин, к которому нужно подобрать ответ',
        'Выберите среди четырех карточек правильную',
        'В настройках можно начать сначала. А так же переключиться с бесконечного режима в конечный - где вы можете закончить режим ответив на все верно и не сделав много ошибок',
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

    choiceBloc =
        ChoiceBloc(statisticProvider: context.read<StatisticProvider>());
  }

  @override
  void dispose() {
    choiceBloc.add(ChoiceEvent.resSend(
        StatisticColod(choice: DateTime.now().difference(timeNow).inMinutes),
        widget.colodId));
    choiceBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChoiceBloc>.value(
      value: choiceBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Выбор',
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
                key: intro.keys[3],
                onPressed: () {
                  choiceBloc.add(const ChoiceEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: ChoiceView(
          intro: intro,
          cards: widget.cards,
        ),
      ),
    );
  }
}
