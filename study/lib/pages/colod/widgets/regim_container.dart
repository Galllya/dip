import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class RegimContainer extends StatelessWidget {
  final String title;
  final String iconName;
  const RegimContainer({
    Key? key,
    required this.iconName,
    required this.title,
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
          onTap: () {},
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
