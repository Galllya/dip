import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';

class EndDrawerInColods extends StatefulWidget {
  final Function onSelect;
  final int val;
  const EndDrawerInColods({
    Key? key,
    required this.val,
    required this.onSelect,
  }) : super(key: key);

  @override
  State<EndDrawerInColods> createState() => _EndDrawerInColodsState();
}

class _EndDrawerInColodsState extends State<EndDrawerInColods> {
  late int val;
  @override
  void initState() {
    val = widget.val;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.horizontal(left: Radius.circular(18)),
        child: Drawer(
          backgroundColor: lightPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'карточек',
                      style: getStyleForTitle(),
                    ),
                    Row(children: [
                      Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (int? value) {
                            widget.onSelect(value);
                            setState(() {
                              val = value!;
                            });
                          },
                          activeColor: Colors.white),
                      Text('меньше 10', style: getStyleForSelect()),
                    ]),
                    Row(children: [
                      Radio(
                          value: 2,
                          groupValue: val,
                          onChanged: (int? value) {
                            widget.onSelect(value);

                            setState(() {
                              val = value!;
                            });
                          },
                          activeColor: Colors.white),
                      Text('от 10 до 50', style: getStyleForSelect())
                    ]),
                    Row(children: [
                      Radio(
                          value: 3,
                          groupValue: val,
                          onChanged: (int? value) {
                            widget.onSelect(value);

                            setState(() {
                              val = value!;
                            });
                          },
                          activeColor: Colors.white),
                      Text('от 50 до 100', style: getStyleForSelect())
                    ]),
                    Row(children: [
                      Radio(
                          value: 4,
                          groupValue: val,
                          onChanged: (int? value) {
                            widget.onSelect(value);

                            setState(() {
                              val = value!;
                            });
                          },
                          activeColor: Colors.white),
                      Text('больше 100', style: getStyleForSelect())
                    ]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        val = 0;
                      });
                      widget.onSelect(0);
                    },
                    child: const Text(
                      'Сбросить фильтр',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

TextStyle getStyleForTitle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}

TextStyle getStyleForSelect() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
}
