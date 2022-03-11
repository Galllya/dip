import 'package:flutter/material.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/cards/view/cards_page.dart';
import 'package:study/pages/choice/view/choice_page.dart';
import 'package:study/pages/colod/widgets/regim_container.dart';
import 'package:study/pages/join/view/join_page.dart';
import 'package:study/pages/memorization/view/memorization_page.dart';
import 'package:study/pages/test/view/test_page.dart';
import 'package:study/pages/write/view/write_page.dart';

class Regime extends StatelessWidget {
  final String colodId;
  final int numberCards;

  final List<model.Card> cards;
  const Regime({
    Key? key,
    required this.cards,
    required this.colodId,
    required this.numberCards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        RegimContainer(
          numberCards: numberCards,
          iconName: 'icon_cards',
          title: "карточки",
          pageName: CardsPage(
            colodId: colodId,
            cards: cards,
          ),
        ),
        RegimContainer(
          numberCards: numberCards,
          iconName: 'icon_lerning',
          title: "заучивание",
          pageName: MemorizationPage(
            colodId: colodId,
            cards: cards,
          ),
        ),
        RegimContainer(
          numberCards: numberCards,
          iconName: 'icon_connect',
          title: "соединение",
          pageName: JoinPage(
            cards: cards,
            colodId: colodId,
          ),
        ),
        RegimContainer(
          numberCards: numberCards,
          iconName: 'icon_chose',
          title: "выбор",
          pageName: ChoicePage(
            colodId: colodId,
            cards: cards,
          ),
        ),
        RegimContainer(
          numberCards: numberCards,
          iconName: 'icon_writte',
          title: "письмо",
          pageName: WritePage(
            cards: cards,
            colodId: colodId,
          ),
        ),
        RegimContainer(
          numberCards: numberCards,
          iconName: 'icon_test',
          title: "тест",
          pageName: TestPage(
            colodId: colodId,
            cards: cards,
          ),
        )
      ],
    );
  }
}
