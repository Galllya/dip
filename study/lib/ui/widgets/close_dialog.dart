import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class CloseDialog extends StatefulWidget {
  final Function next;
  const CloseDialog({
    Key? key,
    required this.next,
  }) : super(key: key);

  @override
  State<CloseDialog> createState() => _CloseDialogState();
}

class _CloseDialogState extends State<CloseDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Вы завершили игру  :)',
        style: TextStyle(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 44,
                child: ElevatedButton(
                  style: WidgetStyle().borderButtonStyle(),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Закрыть",
                    style: TextStyle(
                      color: lightPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 44,
                child: ElevatedButton(
                  style: WidgetStyle().elevatedButtonStyle(),
                  onPressed: () {
                    widget.next();
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Еще раз",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
