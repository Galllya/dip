import 'package:flutter/material.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';

class SelMainContainer extends StatelessWidget {
  final String title;
  const SelMainContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: softColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: primaryColor,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              title,
              style: getBoldTextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
