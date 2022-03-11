import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          title: const Text('Соединение'),
          actions: [
            IconButton(
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
        ),
      ),
    );
  }
}
