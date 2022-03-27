import 'package:flutter/material.dart';
import 'package:study/models/daile_card.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class CardDailyContainer extends StatelessWidget {
  final DailyCard card;
  const CardDailyContainer({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SplashClipper(
            clipRadius: 20,
            decoration: BoxDecoration(
              color: softColor,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      card.card!.term!,
                                      style: const TextStyle(
                                          color: primaryColor, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 70,
                              color: primaryColor,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        card.card!.definition!,
                                        style: const TextStyle(
                                            color: primaryColor, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: primaryColor,
          radius: 25,
          child: card.position! == 4
              ? const Icon(Icons.done, color: Colors.white)
              : Text(
                  card.position.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
        )
      ],
    );
  }
}
