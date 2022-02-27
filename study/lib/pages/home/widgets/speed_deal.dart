import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:study/pages/add_collection/view/add_collection_page.dart';
import 'package:study/pages/add_coloda.dart/view/add_coloda_page.dart';
import 'package:study/ui/sourse/colors.dart';

class SpeedDealCustom extends StatelessWidget {
  const SpeedDealCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      activeIcon: Icons.add_circle,
      icon: Icons.add,
      animatedIconTheme: const IconThemeData(size: 22.0),
      visible: true,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () {},
      onClose: () {},
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
      shape: const CircleBorder(),
      children: [
        SpeedDialChild(
          child: const Icon(
            Icons.picture_in_picture,
            color: Colors.white,
          ),
          backgroundColor: lightPrimaryColor,
          label: 'Добавить колоду',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddColodaPage(),
              ),
            );
          },
        ),
        SpeedDialChild(
          child: const Icon(
            Icons.book,
            color: Colors.white,
          ),
          backgroundColor: lightPrimaryColor,
          label: 'Добавить коллекцию',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddCollectionPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
