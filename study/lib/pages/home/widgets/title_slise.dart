import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';

class TitleSlise extends StatelessWidget {
  final String title;
  final Widget page;
  const TitleSlise({
    required this.page,
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          child: Text(
            'Все $title',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
