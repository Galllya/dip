import 'package:flutter/material.dart';
import 'package:study/models/app_user.dart';
import 'package:study/ui/sourse/colors.dart';

class AboutMe extends StatelessWidget {
  final AppUser user;
  const AboutMe({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            user.description!,
            style: const TextStyle(
              color: primaryColor,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
