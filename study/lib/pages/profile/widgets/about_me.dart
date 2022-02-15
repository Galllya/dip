import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (user.description != null)
            Text(
              user.description!,
              style: const TextStyle(
                color: primaryColor,
                fontSize: 18,
              ),
            ),
          if (user.gender != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Text(
                    'Пол:',
                    style: getUnderTextStyle(),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    user.gender!,
                    style: getBoldTextStyle(),
                  ),
                ],
              ),
            ),
          if (user.dateBirth != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Text(
                    'День рождения:',
                    style: getUnderTextStyle(),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    DateFormat('dd.MM.yyyy').format(user.dateBirth!),
                    style: getBoldTextStyle(),
                  ),
                ],
              ),
            ),
          if (user.uni != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Text(
                    'Место учебы:',
                    style: getUnderTextStyle(),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    user.uni!,
                    style: getBoldTextStyle(),
                  ),
                ],
              ),
            ),
          if (user.work != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Text(
                    'Место работы:',
                    style: getUnderTextStyle(),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    user.work!,
                    style: getBoldTextStyle(),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

TextStyle getUnderTextStyle() {
  return const TextStyle(
    color: primaryColor,
    fontSize: 16,
    decoration: TextDecoration.underline,
  );
}

TextStyle getBoldTextStyle() {
  return const TextStyle(
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}
