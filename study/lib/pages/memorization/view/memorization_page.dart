import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/memorization/bloc/memorization_bloc.dart';
import 'package:study/pages/memorization/view/memorization_view.dart';

class MemorizationPage extends StatefulWidget {
  final List<model.Card> cards;

  const MemorizationPage({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<MemorizationPage> createState() => _MemorizationPageState();
}

class _MemorizationPageState extends State<MemorizationPage> {
  late MemorizationBloc memorizationBloc;

  @override
  void initState() {
    super.initState();

    memorizationBloc = MemorizationBloc();
  }

  @override
  void dispose() {
    memorizationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MemorizationBloc>.value(
      value: memorizationBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Заучивание'),
          actions: [
            IconButton(
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
        ),
      ),
    );
  }
}
