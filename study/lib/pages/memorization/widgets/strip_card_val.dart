import 'package:flutter/cupertino.dart';
import 'package:study/pages/memorization/view/memorization_view.dart';

class StripCardVal extends StatelessWidget {
  final String thisCard;
  final String allCard;
  final String picName;
  const StripCardVal({
    Key? key,
    required this.allCard,
    required this.picName,
    required this.thisCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              '$thisCard/$allCard',
              style: getStyleUp(),
            ),
            const SizedBox(
              height: 6,
            ),
            Image.asset(
              'assets/picturies/pic_$picName.png',
            ),
          ],
        ),
      ],
    );
  }
}
