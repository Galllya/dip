import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/cards/bloc/cards_bloc.dart';
import 'package:study/pages/cards/view/cards_view.dart';

class CardsPage extends StatefulWidget {
  final List<model.Card> cards;
  const CardsPage({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  late CardsBloc cardsBloc;

  @override
  void initState() {
    super.initState();

    cardsBloc = CardsBloc();
  }

  @override
  void dispose() {
    cardsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CardsBloc>.value(
      value: cardsBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Карточки'),
          actions: [
            IconButton(
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
          cards: widget.cards,
        ),
      ),
    );
  }
}
