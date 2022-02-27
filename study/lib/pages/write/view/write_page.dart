import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/write/bloc/write_bloc.dart';
import 'package:study/pages/write/view/write_view.dart';

class WritePage extends StatefulWidget {
  final List<model.Card> cards;

  const WritePage({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  late WriteBloc writeBloc;

  @override
  void initState() {
    super.initState();

    writeBloc = WriteBloc();
  }

  @override
  void dispose() {
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
