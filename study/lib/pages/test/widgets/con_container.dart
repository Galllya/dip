import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';

class ConContainer extends StatelessWidget {
  final String index;
  final String title;
  const ConContainer({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              color: softColor,
              height: 40,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                      child: Text(
                    title,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ))),
            ),
          ),
          CircleAvatar(
            backgroundColor: primaryColor,
            radius: 20,
            child: Text(
              index,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
