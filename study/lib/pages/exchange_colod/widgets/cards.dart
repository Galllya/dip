import 'package:flutter/material.dart';
import 'package:study/pages/colod/widgets/card_container.dart';
import 'package:study/models/coloda/card.dart' as model;

class Cards extends StatelessWidget {
  final List<model.Card> cards;
  const Cards({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      primary: false,
      children: [
        ...cards.map(
          (e) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CardContainer(
              term: e.term!,
              definition: e.definition!,
            ),
          ),
        ),
      ],
    );
  }
}
