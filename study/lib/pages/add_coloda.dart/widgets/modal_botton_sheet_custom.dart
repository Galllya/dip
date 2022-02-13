import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class ModalBottonSheetCustom extends StatefulWidget {
  final bool showEvery;
  final Function onChangeShowEvery;
  final bool takeMyHaveAuthor;
  final Function onChangetakeMyHaveAuthor;

  const ModalBottonSheetCustom({
    Key? key,
    required this.showEvery,
    required this.onChangeShowEvery,
    required this.onChangetakeMyHaveAuthor,
    required this.takeMyHaveAuthor,
  }) : super(key: key);

  @override
  _ModalBottonSheetCustomState createState() => _ModalBottonSheetCustomState();
}

class _ModalBottonSheetCustomState extends State<ModalBottonSheetCustom> {
  late bool showEvery;
  late bool takeMyHaveAuthor;

  @override
  void initState() {
    showEvery = widget.showEvery;
    takeMyHaveAuthor = widget.takeMyHaveAuthor;

    super.initState();
  }

  final form = FormGroup(
    {
      'tag': FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(20),
        ],
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset('assets/icons/icon_close.svg'),
                  ),
                ),
                Row(
                  children: [
                    Switch(
                      value: showEvery,
                      onChanged: (bool value) {
                        setState(() {
                          showEvery = value;
                        });
                      },
                      activeTrackColor: softColor,
                      activeColor: primaryCoolColor,
                    ),
                    Text(
                      'колода видна всем',
                      style: getStyle(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      value: takeMyHaveAuthor,
                      onChanged: (bool value) {
                        setState(() {
                          takeMyHaveAuthor = value;
                        });
                      },
                      activeTrackColor: softColor,
                      activeColor: primaryCoolColor,
                    ),
                    Text(
                      'указывать меня как автора',
                      style: getStyle(),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: WidgetStyle().mainElevatedButtonStyle(),
                onPressed: () {
                  widget.onChangetakeMyHaveAuthor(takeMyHaveAuthor);
                  widget.onChangeShowEvery(showEvery);
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  child: Text(
                    'Применить',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle getStyle() {
  return const TextStyle(
    color: primaryColor,
    fontSize: 16,
  );
}
