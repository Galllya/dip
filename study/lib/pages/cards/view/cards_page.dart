import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/statistic.dart';
import 'package:study/pages/cards/bloc/cards_bloc.dart';
import 'package:study/pages/cards/view/cards_view.dart';
import 'package:study/provider/statistic_provider.dart';

class CardsPage extends StatefulWidget {
  final List<model.Card> cards;
  final String colodId;
  const CardsPage({
    Key? key,
    required this.cards,
    required this.colodId,
  }) : super(key: key);

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  late CardsBloc cardsBloc;
  late DateTime timeNow;
  Intro intro = Intro(
    stepCount: 5,
    maskClosable: true,
    widgetBuilder: StepWidgetBuilder.useDefaultTheme(
      texts: [
        'В данном режиме вы можете повторять свои карточки. Попробуйте вспомнить ответ, а потом сравните с правильным.',
        'Нажмите на карточку - чтобы увидеть правильный ответ',
        'Перемешайтесь между карточками',
        'Индикатор покажет, сколько карточек вы уже прошли',
        'В настройках можно выбрать:  показывать сначало термин или определение',
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
    cardsBloc = CardsBloc(statisticProvider: context.read<StatisticProvider>());
  }

  @override
  void dispose() {
    cardsBloc.add(CardsEvent.resSend(
        StatisticColod(cards: DateTime.now().difference(timeNow).inMinutes),
        widget.colodId));

    cardsBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CardsBloc>.value(
      value: cardsBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Карточки',
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
                  cardsBloc.add(const CardsEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: CardsView(
          intro: intro,
          cards: widget.cards,
        ),
      ),
    );
  }
}
