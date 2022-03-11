import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          title: const Text('Письмо'),
          actions: [
            IconButton(
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
        ),
      ),
    );
  }
}
