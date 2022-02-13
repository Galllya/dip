import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/pages/colod/widgets/delete_dialog.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class ModalSetting extends StatefulWidget {
  final bool showEvery;
  final Function onChange;
  final bool takeMyHaveAuthor;
  final Function deleteColod;

  const ModalSetting({
    Key? key,
    required this.showEvery,
    required this.onChange,
    required this.takeMyHaveAuthor,
    required this.deleteColod,
  }) : super(key: key);

  @override
  _ModalSettingState createState() => _ModalSettingState();
}

class _ModalSettingState extends State<ModalSetting> {
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
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return DeliteDialog(
                            deleteColod: () {
                              widget.deleteColod();
                            },
                          );
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/icon_delete.svg',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'удалить колоду',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: WidgetStyle().mainElevatedButtonStyle(),
                onPressed: () {
                  if (widget.showEvery != showEvery ||
                      widget.takeMyHaveAuthor != takeMyHaveAuthor) {
                    widget.onChange(showEvery, takeMyHaveAuthor);
                  }
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
