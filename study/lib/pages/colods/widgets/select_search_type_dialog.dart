import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/pages/add_coloda.dart/widgets/modal_botton_sheet_custom.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class SelectSearchTypeDialog extends StatefulWidget {
  final bool isNameSearch;
  final Function onChange;
  final String? title;

  const SelectSearchTypeDialog({
    Key? key,
    required this.isNameSearch,
    required this.onChange,
    this.title,
  }) : super(key: key);

  @override
  State<SelectSearchTypeDialog> createState() => _SelectSearchTypeDialogState();
}

class _SelectSearchTypeDialogState extends State<SelectSearchTypeDialog> {
  late int isNameSeach;
  @override
  void initState() {
    isNameSeach = widget.isNameSearch ? 1 : 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Поиск по:",
        style: TextStyle(color: primaryColor),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () {},
          child: SizedBox(
            height: 44,
            child: ElevatedButton(
              style: WidgetStyle().elevatedButtonStyle(),
              onPressed: () {
                widget.onChange(isNameSeach == 1 ? true : false);
                Navigator.pop(context);
              },
              child: const Text(
                "Применить",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
      content: SizedBox(
        height: 100,
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: isNameSeach,
                  onChanged: (int? val) {
                    setState(() {
                      isNameSeach = val!;
                    });
                  },
                  activeColor: primaryColor,
                ),
                Text(
                  widget.title == null
                      ? 'названию колоды'
                      : 'названию ${widget.title}',
                  style: getStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: primaryColor,
                    value: 2,
                    groupValue: isNameSeach,
                    onChanged: (int? val) {
                      setState(() {
                        isNameSeach = val!;
                      });
                    }),
                Text(
                  'тегам',
                  style: getStyle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
