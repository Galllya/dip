import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          title: const Text('Выбор'),
          actions: [
            IconButton(
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
          cards: widget.cards,
        ),
      ),
    );
  }
}
