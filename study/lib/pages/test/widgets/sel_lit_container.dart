import 'package:flutter/material.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';

class SelLitContainer extends StatelessWidget {
  final String title;
  final bool isSelect;
  final bool? isTrue;
  const SelLitContainer({
    Key? key,
    required this.title,
    required this.isSelect,
    required this.isTrue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelect
            ? isTrue == null
                ? lightPrimaryColor
                : isTrue!
                    ? const Color(0xFF8EFF8C)
                    : const Color(0xFFFF8080)
            : softColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: getBoldTextStyle().copyWith(
              color: isSelect ? Colors.white : primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
