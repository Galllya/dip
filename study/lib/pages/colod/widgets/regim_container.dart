import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class RegimContainer extends StatelessWidget {
  final String title;
  final String iconName;
  final Widget pageName;
  final int numberCards;

  const RegimContainer({
    Key? key,
    required this.iconName,
    required this.title,
    required this.pageName,
    required this.numberCards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashClipper(
      clipRadius: 20,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            if (title == 'соединение' && numberCards < 8) {
              ScaffoldMessenger.of(context).showSnackBar(
                  CustomScaffoldMessages().show(
                      title:
                          'Для данного режима у вас должно быть больше 6 карт'));
            } else {
              if (title == 'выбор' && numberCards < 5) {
                ScaffoldMessenger.of(context).showSnackBar(
                    CustomScaffoldMessages().show(
                        title:
                            'Для данного режима у вас должно быть больше 3 карт'));
              } else {
                if (title == 'тест' && numberCards < 5) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      CustomScaffoldMessages().show(
                          title:
                              'Для данного режима у вас должно быть больше 3 карт'));
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pageName,
                    ),
                  );
                }
              }
            }
          },
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              SvgPicture.asset(
                'assets/icons/$iconName.svg',
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
