import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class DeliteDialog extends StatefulWidget {
  final Function deleteColod;
  const DeliteDialog({
    Key? key,
    required this.deleteColod,
  }) : super(key: key);

  @override
  State<DeliteDialog> createState() => _DeliteDialogState();
}

class _DeliteDialogState extends State<DeliteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Вы уверенны?',
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
                    widget.deleteColod();
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Удалить",
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
      content: const Text(
        'Восстановить колоду не получится ',
        style: TextStyle(color: primaryColor),
      ),
    );
  }
}
