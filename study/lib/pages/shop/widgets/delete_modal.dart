import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class BuyDialog extends StatefulWidget {
  final Function buy;
  const BuyDialog({
    Key? key,
    required this.buy,
  }) : super(key: key);

  @override
  State<BuyDialog> createState() => _BuyDialogState();
}

class _BuyDialogState extends State<BuyDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Преобрести стикер?',
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
                    widget.buy();
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Купить",
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
        'Отменить действие не получится',
        style: TextStyle(color: primaryColor),
      ),
    );
  }
}
