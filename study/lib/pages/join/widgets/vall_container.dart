import 'package:flutter/material.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class ValContainer extends StatelessWidget {
  final String title;
  final Function onTab;
  final bool isWrong;
  const ValContainer({
    Key? key,
    required this.onTab,
    required this.title,
    required this.isWrong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SplashClipper(
        decoration: BoxDecoration(
          color: isWrong ? const Color(0xFFFF8080) : softColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              onTab();
            },
            onLongPress: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                    content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Center(child: Text(title))],
                )),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: getBoldTextStyle(isWhite: isWrong),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
