import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';

class TitleStrip extends StatelessWidget {
  final String title;
  const TitleStrip({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          )
        ],
      ),
    );
  }
}
