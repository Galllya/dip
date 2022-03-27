import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/all_cards/bloc/all_cards_bloc.dart';
import 'package:study/pages/all_cards/view/all_cards_view.dart';
import 'package:study/provider/coloda_provider.dart';

class AllCardsPage extends StatefulWidget {
  final String uid;
  final Function fromTraining;

  const AllCardsPage({
    Key? key,
    required this.uid,
    required this.fromTraining,
  }) : super(key: key);

  @override
  State<AllCardsPage> createState() => _AllCardsPageState();
}

class _AllCardsPageState extends State<AllCardsPage> {
  late AllCardsBloc allCardsBloc;

  @override
  void initState() {
    super.initState();

    allCardsBloc = AllCardsBloc(colodaProvider: context.read<ColodaProvider>())
      ..add(AllCardsEvent.started(widget.uid));
  }

  @override
  void dispose() {
    allCardsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AllCardsBloc>.value(
      value: allCardsBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Выберите карточки'),
          actions: [
            IconButton(
                onPressed: () {
                  allCardsBloc.add(const AllCardsEvent.send());
                },
                icon: const Icon(Icons.done)),
          ],
        ),
        body: AllCardsView(
          fromTraining: widget.fromTraining,
        ),
      ),
    );
  }
}
