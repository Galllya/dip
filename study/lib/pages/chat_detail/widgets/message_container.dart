import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:study/ui/sourse/colors.dart';

class MessageContainer extends StatelessWidget {
  final DateTime time;
  final String test;
  final bool isCurUser;
  const MessageContainer(
      {Key? key,
      required this.isCurUser,
      required this.test,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          isCurUser ? EdgeInsets.only(left: 50) : EdgeInsets.only(right: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isCurUser ? primaryColor : softColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  test,
                  style: TextStyle(
                      fontSize: 16,
                      color: isCurUser ? Colors.white : Colors.black),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                DateFormat('kk:mm').format(time),
                style: TextStyle(
                    fontSize: 10,
                    color: isCurUser ? Colors.white : Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
