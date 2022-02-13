import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class ModalProfileSetting extends StatefulWidget {
  final bool showEvery;
  final Function onChange;
  final bool writeCanAll;
  final bool statCanSeeEvery;
  final Function deleteAccount;
  final Function logOut;

  const ModalProfileSetting({
    Key? key,
    required this.showEvery,
    required this.onChange,
    required this.writeCanAll,
    required this.deleteAccount,
    required this.statCanSeeEvery,
    required this.logOut,
  }) : super(key: key);

  @override
  _ModalProfileSettingState createState() => _ModalProfileSettingState();
}

class _ModalProfileSettingState extends State<ModalProfileSetting> {
  late bool showEvery;
  late bool writeCanAll;
  late bool statCanSeeEvery;

  @override
  void initState() {
    showEvery = widget.showEvery;
    writeCanAll = widget.writeCanAll;
    statCanSeeEvery = widget.statCanSeeEvery;

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
                      'профиль виден всем',
                      style: getStyle(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      value: writeCanAll,
                      onChanged: (bool value) {
                        setState(() {
                          writeCanAll = value;
                        });
                      },
                      activeTrackColor: softColor,
                      activeColor: primaryCoolColor,
                    ),
                    Text(
                      'писать могут все пользователи',
                      style: getStyle(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      value: statCanSeeEvery,
                      onChanged: (bool value) {
                        setState(() {
                          statCanSeeEvery = value;
                        });
                      },
                      activeTrackColor: softColor,
                      activeColor: primaryCoolColor,
                    ),
                    Text(
                      'мою статистику видят все пользователи',
                      style: getStyle(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    widget.logOut();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/log-out.svg',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'выйти из аккаунта',
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
                const SizedBox(
                  height: 20,
                ),
                // InkWell(
                //   onTap: () {
                //     widget.deleteAccount();
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 20),
                //     child: Row(
                //       children: [
                //         SvgPicture.asset(
                //           'assets/icons/icon_delete.svg',
                //         ),
                //         const SizedBox(
                //           width: 10,
                //         ),
                //         const Text(
                //           'удалить аккаунт',
                //           style: TextStyle(
                //             color: primaryColor,
                //             fontSize: 16,
                //             decoration: TextDecoration.underline,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: WidgetStyle().mainElevatedButtonStyle(),
                onPressed: () {
                  if (widget.showEvery != showEvery ||
                      widget.writeCanAll != writeCanAll ||
                      widget.statCanSeeEvery != statCanSeeEvery) {
                    widget.onChange(
                      showEvery,
                      writeCanAll,
                      statCanSeeEvery,
                    );
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
