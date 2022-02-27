import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/date.dart';

class ResContainer extends StatelessWidget {
  final int index;
  final String? def;
  final bool? isTrue;
  const ResContainer({
    Key? key,
    required this.index,
    this.def,
    this.isTrue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                top: const BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
                bottom: const BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
                left: index == 0
                    ? const BorderSide(
                        color: primaryColor,
                        width: 2,
                      )
                    : BorderSide.none,
                right: const BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
              ),
            ),
            child: Center(
              child: Text(
                DateCustom().getLeter(index + 1),
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: isTrue == null
                  ? Colors.transparent
                  : isTrue!
                      ? const Color(0xFF8EFF8C)
                      : const Color(0xFFFF8080),
              border: Border(
                bottom: const BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
                left: index == 0
                    ? const BorderSide(
                        color: primaryColor,
                        width: 2,
                      )
                    : BorderSide.none,
                right: const BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
              ),
            ),
            child: Center(
              child: Text(
                def == null ? '?' : def!,
                style: TextStyle(
                  color: isTrue == null ? primaryColor : Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
