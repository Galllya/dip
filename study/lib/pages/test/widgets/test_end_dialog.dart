import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class TestEndDialog extends StatefulWidget {
  final String point;
  final int res;
  final Function onTab;
  const TestEndDialog({
    Key? key,
    required this.point,
    required this.res,
    required this.onTab,
  }) : super(key: key);

  @override
  State<TestEndDialog> createState() => _TestEndDialogState();
}

class _TestEndDialogState extends State<TestEndDialog> {
  String text = '';

  @override
  void initState() {
    if (widget.res == 1) {
      text = 'Старайтесь лучше :(';
    }
    if (widget.res == 2) {
      text = 'Хороший результат!';
    }
    if (widget.res == 3) {
      text = 'Отличный результат! Молодец :)';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Тест закончен! Вы набрали: ${widget.point} баллов! $text',
        style: const TextStyle(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      content: SizedBox(
        height: 350,
        child: Column(
          children: [
            Image.asset('assets/picturies/pic_cat_${widget.res}.png'),
            const Text(
              ' Показать результат?',
              style: TextStyle(
                color: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
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
                    widget.onTab();
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Показать",
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
