import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/test/bloc/test_bloc.dart';
import 'package:study/pages/test/view/test_view.dart';

class TestPage extends StatefulWidget {
  final List<model.Card> cards;

  const TestPage({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late TestBloc testBloc;

  @override
  void initState() {
    super.initState();

    testBloc = TestBloc();
  }

  @override
  void dispose() {
    testBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestBloc>.value(
      value: testBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Тест'),
          actions: [
            IconButton(
                onPressed: () {
                  testBloc.add(const TestEvent.showSheet());
                },
                icon: SvgPicture.asset(
                  'assets/icons/icon_settings.svg',
                  color: Colors.white,
                )),
          ],
        ),
        body: TestView(
          cards: widget.cards,
        ),
      ),
    );
  }
}
