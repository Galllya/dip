import 'package:flutter/material.dart';
import 'package:study/pages/colod/widgets/regim_container.dart';

class Regime extends StatelessWidget {
  const Regime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: const [
        RegimContainer(iconName: 'icon_cards', title: "карточки"),
        RegimContainer(iconName: 'icon_lerning', title: "заучивание"),
        RegimContainer(iconName: 'icon_connect', title: "соединение"),
        RegimContainer(iconName: 'icon_chose', title: "выбор"),
        RegimContainer(iconName: 'icon_writte', title: "письмо"),
        RegimContainer(iconName: 'icon_test', title: "тест")
      ],
    );
  }
}
