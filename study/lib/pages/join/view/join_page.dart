import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/statistic.dart';
import 'package:study/pages/join/bloc/join_bloc.dart';
import 'package:study/pages/join/view/join_view.dart';
import 'package:study/provider/statistic_provider.dart';

class JoinPage extends StatefulWidget {
  final String colodId;

  final List<model.Card> cards;
  const JoinPage({
    Key? key,
    required this.cards,
    required this.colodId,
  }) : super(key: key);

  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  late JoinBloc joinBloc;
  late DateTime timeNow;
  Intro intro = Intro(
    stepCount: 4,
    maskClosable: true,
    widgetBuilder: StepWidgetBuilder.useDefaultTheme(
      texts: [
        'В данном режиме вы можете потренироваться и проверить свои знания. Просто соединяйте термины с значениями!',
        'Выбирайте первое значение',
        'Потом выбирайте второе значение. Если вы выбрали правильно - обе карточки уйдут. Если не правильно - они останутся.',
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

    joinBloc = JoinBloc(statisticProvider: context.read<StatisticProvider>());
  }

  @override
  void dispose() {
    joinBloc.add(JoinEvent.resSend(
        StatisticColod(join: DateTime.now().difference(timeNow).inMinutes),
        widget.colodId));
    joinBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<JoinBloc>.value(
      value: joinBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Соединение',
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
                  joinBloc.add(const JoinEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: JoinView(
          cards: widget.cards,
          intro: intro,
        ),
      ),
    );
  }
}
