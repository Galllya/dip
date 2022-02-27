import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/join/widgets/lose_dialog.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/write/bloc/write_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/close_dialog.dart';
import 'package:study/ui/widgets/modal_join_settiong.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class WriteView extends StatefulWidget {
  final List<model.Card> cards;

  const WriteView({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<WriteView> createState() => _WriteViewState();
}

class _WriteViewState extends State<WriteView> {
  late List<model.Card> allCards;
  late model.Card nowCard;
  bool? isTrue;
  late int nowMistake, allMistake;
  bool infinityRegim = true;
  List<model.Card> selectedCards = [];

  final form = FormGroup(
    {
      'def': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
  @override
  void initState() {
    allCards = widget.cards;
    start();
    allMistake = allCards.length ~/ 20;

    if (allMistake < 1) {
      allMistake = 3;
    } else {
      allMistake += 2;
    }
    nowMistake = 0;
    super.initState();
  }

  void start() {
    isTrue = null;
    form.control('def').value = null;
    int ran = Random().nextInt(allCards.length);
    if (!infinityRegim) {
      while (selectedCards.contains(allCards[ran])) {
        ran = Random().nextInt(allCards.length);
      }
    }

    setState(() {
      nowCard = allCards[ran];
      selectedCards.add(nowCard);
    });
  }

  int getRandom() {
    int ran = Random().nextInt(allCards.length);

    while (allCards[ran] == nowCard) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  void onTab() {
    if (!infinityRegim && selectedCards.length == allCards.length) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CloseDialog(
              next: () {
                selectedCards.clear();
                nowMistake = 0;
                start();
                selectedCards.clear();
              },
            );
          });
    } else {
      if (isTrue == null) {
        if (form.control('def').value == nowCard.definition) {
          setState(() {
            isTrue = true;
          });
        } else {
          if (nowMistake == allMistake && !infinityRegim) {
            Future.delayed(const Duration(milliseconds: 300), () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return LoseDialog(
                      next: () {
                        start();
                        nowMistake = 0;
                        selectedCards.clear();
                      },
                    );
                  });
              setState(
                () {
                  selectedCards.clear();
                  selectedCards.clear();
                },
              );
            });
          } else {
            setState(() {
              isTrue = false;
              nowMistake++;
            });
          }
        }
      } else {
        start();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WriteBloc, WriteState>(
        listener: (BuildContext context, WriteState state) {
      state.maybeWhen(
          orElse: () {},
          initial: (show) {
            if (show) {
              showModalBottomSheet<void>(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                builder: (BuildContext context) {
                  return ModalInfSetting(
                    onRefresh: () {
                      start();
                      nowMistake = 0;
                    },
                    infinityRegim: true,
                    onChange: (
                      bool infinityRegimFromModal,
                    ) {
                      infinityRegim = infinityRegimFromModal;
                      nowMistake = 0;

                      start();
                    },
                  );
                },
              );
            }
          });
    }, child: BlocBuilder<WriteBloc, WriteState>(
      builder: (BuildContext context, WriteState state) {
        return ReactiveForm(
          formGroup: form,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !infinityRegim
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          '$nowMistake/$allMistake ошибок',
                          style: getBoldTextStyle(),
                        ),
                      )
                    : const SizedBox(),
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: SplashClipper(
                        decoration: BoxDecoration(
                            color: softColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: primaryColor,
                              width: 1,
                            )),
                        child: Center(
                          child: Text(
                            nowCard.term!,
                            style: getBoldTextStyle(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    (isTrue != null && isTrue == false)
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Правильно: ${nowCard.definition}',
                              style: getBoldTextStyle(),
                            ),
                          )
                        : const SizedBox(),
                    Row(
                      children: [
                        Expanded(
                          child: ReactiveTextField(
                            formControlName: 'def',
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  isTrue == null ? Colors.black : Colors.white,
                            ),
                            decoration: WidgetStyle()
                                .easyCustomInputDecoration(
                                    labelText: 'Введите ответ...')
                                .copyWith(
                                  fillColor: isTrue != null
                                      ? isTrue!
                                          ? const Color(0xFF8FFF8C)
                                          : const Color(0xFFFF8080)
                                      : Colors.black,
                                  filled: isTrue == null ? false : true,
                                ),
                            showErrors: (_) => false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: ReactiveFormConsumer(
                            builder: (context, form, child) {
                              return InkWell(
                                onTap: form.control('def').valid
                                    ? () {
                                        onTab();
                                      }
                                    : null,
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor: form.control('def').valid
                                      ? primaryColor
                                      : Colors.grey,
                                  child: SvgPicture.asset(
                                    isTrue == null
                                        ? 'assets/icons/icon_ok.svg'
                                        : 'assets/icons/icon_ar_right.svg',
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
