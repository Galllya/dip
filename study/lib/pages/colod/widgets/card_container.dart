import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class CardContainer extends StatelessWidget {
  final String term;
  final String definition;
  const CardContainer({
    Key? key,
    required this.term,
    required this.definition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashClipper(
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          term,
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
                  color: Colors.grey,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            definition,
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
        ),
      ),
    );
  }
}
