import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/statistic.dart';
import 'package:study/pages/write/bloc/write_bloc.dart';
import 'package:study/pages/write/view/write_view.dart';
import 'package:study/provider/statistic_provider.dart';

class WritePage extends StatefulWidget {
  final List<model.Card> cards;
  final String colodId;

  const WritePage({
    Key? key,
    required this.cards,
    required this.colodId,
  }) : super(key: key);

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  late WriteBloc writeBloc;
  late DateTime timeNow;
  Intro intro = Intro(
    stepCount: 5,
    maskClosable: true,
    widgetBuilder: StepWidgetBuilder.useDefaultTheme(
      texts: [
        'В данном режиме вы можете потренироваться и проверить свои знания. Просто напишите правильный ответ!',
        'На карточки термин, к которому нужно написать ответ',
        'Введите в поле правильный ответ',
        'После ввода нажмите на данную кнопку. Если вы ответили верно - она станет зеленой. Если не верно - крастой, и вы увидете правильный ответ',
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

    writeBloc = WriteBloc(statisticProvider: context.read<StatisticProvider>());
  }

  @override
  void dispose() {
    writeBloc.add(WriteEvent.resSend(
        StatisticColod(wtite: DateTime.now().difference(timeNow).inMinutes),
        widget.colodId));
    writeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WriteBloc>.value(
      value: writeBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Письмо',
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
                key: intro.keys[4],
                onPressed: () {
                  writeBloc.add(const WriteEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: WriteView(
          cards: widget.cards,
          intro: intro,
        ),
      ),
    );
  }
}
