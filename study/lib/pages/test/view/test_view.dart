import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/test/bloc/test_bloc.dart';
import 'package:study/pages/test/widgets/con_container.dart';
import 'package:study/pages/test/widgets/modal_test_setting.dart';
import 'package:study/pages/test/widgets/res_container.dart';
import 'package:study/pages/test/widgets/sel_lit_container.dart';
import 'package:study/pages/test/widgets/sel_main_container.dart';
import 'package:study/pages/test/widgets/test_end_dialog.dart';
import 'package:study/pages/test/widgets/title_strip.dart';
import 'package:study/pages/test/widgets/wtite_input.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/date.dart';
import 'package:study/ui/sourse/text_style.dart';
import 'package:study/ui/sourse/widget_style.dart';

class TestView extends StatefulWidget {
  final List<model.Card> cards;
  final Function sendRes;
  final Intro intro;
  const TestView({
    Key? key,
    required this.cards,
    required this.sendRes,
    required this.intro,
  }) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  late List<model.Card> allCards;
  late List<model.Card> cardsCon;
  late List<model.Card> cardsSel;
  late List<String?> cardsSelAnswer;

  late List<model.Card> cardsWrt;
  late List<model.Card> cardsConStuf;
  late List<model.Card?> cardsAns;
  late List<int?> num;
  List<List<int>> points = [];
  List<List<model.Card>> allCardsSel = [];
  late List<FormGroup> forms;
  late int allPoints;
  late int number, numberSor;
  bool showResult = false;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    allCards = widget.cards;
    start();
    super.initState();
  }

  void start() {
    setState(() {
      showResult = false;
      points = [];
      allCardsSel = [];
      cardsCon = [];
      cardsSel = [];
      cardsWrt = [];
      cardsConStuf = [];
      cardsAns = [];
      num = [];
      allCardsSel = [];
      cardsSelAnswer = [];
      forms = [];
      number = allCards.length ~/ 3;
      if (number > 7) {
        numberSor = 7;
      } else {
        numberSor = number;
      }
      allPoints = numberSor + 2 * number;
      for (int i = 0; i < number; i++) {
        allCardsSel.add([]);
        int ran1 = getRandom();
        cardsSel.add(allCards[ran1]);
        cardsSelAnswer.add(null);
        allCardsSel[i].add(allCards[ran1]);
        for (int j = 0; j < 3; j++) {
          var ran = getRandomFor(i);
          allCardsSel[i].add(allCards[ran]);
        }
        int ran2 = getRandom();
        cardsWrt.add(allCards[ran2]);
        forms.add(FormGroup(
          {
            'def': FormControl<String>(
              validators: [
                Validators.required,
              ],
            ),
          },
        ));
      }

      for (int i = 0; i < numberSor; i++) {
        int ran = getRandom();
        cardsCon.add(allCards[ran]);
        cardsConStuf.add(allCards[ran]);
        cardsAns.add(null);
        num.add(null);
      }
      cardsAns.add(null);

      cardsConStuf.shuffle();

      for (int i = 0; i < cardsSel.length; i++) {
        points.add([]);
      }
      for (int i = 0; i < cardsSel.length; i++) {
        for (int j = 0; j < 4; j++) {
          var ran = getRandomPoint(i) + 1;
          points[i].add(ran);
        }
      }
    });
  }

  int getRandomPoint(int i) {
    int ran = Random().nextInt(4);

    while (points[i].contains(ran + 1)) {
      ran = Random().nextInt(4);
    }

    return ran;
  }

  int getRandomFor(int i) {
    int ran = Random().nextInt(allCards.length);

    while (!allCards.contains(allCards[ran]) ||
        cardsSel.contains(allCards[ran]) ||
        allCardsSel[i].contains(allCards[ran])) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  int getRandom() {
    int ran = Random().nextInt(allCards.length);

    while (!allCards.contains(allCards[ran]) ||
        cardsSel.contains(allCards[ran]) ||
        cardsWrt.contains(allCards[ran]) ||
        cardsCon.contains(allCards[ran])) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  void onTabSel(int i, int number) {
    setState(() {
      cardsSelAnswer[i] = allCardsSel[i][points[i].indexOf(number)].definition!;
    });
  }

  void complite() async {
    int truePoint = 0;
    int res = 0;
    for (int i = 0; i < numberSor; i++) {
      if (num[i] != null) {
        if (cardsConStuf.elementAt(num[i]!) == cardsCon[i]) {
          truePoint++;
        }
      }
    }

    for (int i = 0; i < number; i++) {
      if (cardsSel[i].definition == cardsSelAnswer[i]) {
        truePoint++;
      }
      if (cardsWrt[i].definition == forms[i].control('def').value) {
        truePoint++;
      }
    }

    var val = truePoint / allPoints * 100;

    if (val < 40) {
      res = 1;
    } else {
      if (val > 80) {
        res = 3;
      } else {
        res = 2;
      }
    }
    widget.sendRes(res);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return TestEndDialog(
            onTab: () {
              setState(() {
                showResult = true;
                scrollUp();
              });
            },
            res: res,
            point: '$truePoint/$allPoints',
          );
        });
  }

  void scrollUp() {
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 600), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TestBloc, TestState>(
        listener: (BuildContext context, TestState state) {
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
                  return ModalTestSetting(
                    onRefresh: () {
                      start();
                      scrollUp();
                    },
                  );
                },
              );
            }
          });
    }, child: BlocBuilder<TestBloc, TestState>(
      builder: (BuildContext context, TestState state) {
        return ListView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const TitleStrip(title: 'Соедините пары'),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      for (int i = 0; i < numberSor; i++)
                        ConContainer(
                            index: DateCustom().getLeter(i + 1),
                            title: cardsCon[i].term!)
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      for (int i = 0; i < numberSor; i++)
                        ConContainer(
                            index: (i + 1).toString(),
                            title: cardsConStuf[i].definition!)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              key: widget.intro.keys[1],
              children: [
                for (int i = 0; i < numberSor; i++)
                  InkWell(
                      onTap: showResult
                          ? null
                          : () async {
                              await showDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (BuildContext context) {
                                    return SimpleDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        children: [
                                          for (int j = 0;
                                              j < numberSor + 1;
                                              j++)
                                            if (cardsAns[j] == null)
                                              SimpleDialogOption(
                                                onPressed: () {
                                                  if (j != numberSor) {
                                                    if (num[i] != null) {
                                                      cardsAns[num[i]!] = null;
                                                    }
                                                    setState(() {
                                                      cardsAns[j] =
                                                          cardsConStuf[j];
                                                      num[i] = j;
                                                    });
                                                  } else {
                                                    if (num[i] == null) {
                                                    } else {
                                                      setState(() {
                                                        cardsAns[num[i]!] =
                                                            null;
                                                        num[i] = null;
                                                      });
                                                    }
                                                  }

                                                  Navigator.pop(context);
                                                },
                                                child: Center(
                                                  child: Text(
                                                    j == numberSor
                                                        ? 'отмена'
                                                        : (j + 1).toString(),
                                                    style: getBoldTextStyle(),
                                                  ),
                                                ),
                                              ),
                                        ]);
                                  });
                            },
                      child: ResContainer(
                        index: i,
                        isTrue: showResult
                            ? num[i] != null
                                ? (cardsConStuf.elementAt(num[i]!) ==
                                        cardsCon[i])
                                    ? true
                                    : false
                                : false
                            : null,
                        def: num.elementAt(i) == null
                            ? null
                            : (num.elementAt(i)! + 1).toString(),
                      )),
              ],
            ),
            if (showResult)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Правильно:',
                    style: getBoldTextStyle(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < numberSor; i++)
                        ResContainer(
                          index: i,
                          isTrue: null,
                          def: (cardsConStuf.indexOf(cardsCon[i]) + 1)
                              .toString(),
                        )
                    ],
                  ),
                ],
              ),
            TitleStrip(
              title: 'Выберите правильный варинт',
            ),
            for (int i = 0; i < number; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: SelMainContainer(title: cardsSel[i].term!)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: InkWell(
                                  onTap: showResult
                                      ? null
                                      : () {
                                          onTabSel(i, 1);
                                        },
                                  onLongPress: () {
                                    showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                          content: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                              child: Text(allCardsSel[i]
                                                      [points[i].indexOf(1)]
                                                  .definition!))
                                        ],
                                      )),
                                    );
                                  },
                                  child: SelLitContainer(
                                    isTrue: showResult
                                        ? (cardsSel[i].definition ==
                                            cardsSelAnswer[i])
                                        : null,
                                    isSelect: cardsSelAnswer[i] ==
                                        allCardsSel[i][points[i].indexOf(1)]
                                            .definition!,
                                    title: allCardsSel[i][points[i].indexOf(1)]
                                        .definition!,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: InkWell(
                                  onTap: showResult
                                      ? null
                                      : () {
                                          onTabSel(i, 2);
                                        },
                                  child: SelLitContainer(
                                    isTrue: showResult
                                        ? (cardsSel[i].definition ==
                                            cardsSelAnswer[i])
                                        : null,
                                    isSelect: cardsSelAnswer[i] ==
                                        allCardsSel[i][points[i].indexOf(2)]
                                            .definition!,
                                    title: allCardsSel[i][points[i].indexOf(2)]
                                        .definition!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: InkWell(
                                  onTap: showResult
                                      ? null
                                      : () {
                                          onTabSel(i, 3);
                                        },
                                  child: SelLitContainer(
                                    isTrue: showResult
                                        ? (cardsSel[i].definition ==
                                            cardsSelAnswer[i])
                                        : null,
                                    isSelect: cardsSelAnswer[i] ==
                                        allCardsSel[i][points[i].indexOf(3)]
                                            .definition!,
                                    title: allCardsSel[i][points[i].indexOf(3)]
                                        .definition!,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: InkWell(
                                  onTap: showResult
                                      ? null
                                      : () {
                                          onTabSel(i, 4);
                                        },
                                  child: SelLitContainer(
                                    isTrue: showResult
                                        ? (cardsSel[i].definition ==
                                            cardsSelAnswer[i])
                                        : null,
                                    isSelect: cardsSelAnswer[i] ==
                                        allCardsSel[i][points[i].indexOf(4)]
                                            .definition!,
                                    title: allCardsSel[i][points[i].indexOf(4)]
                                        .definition!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (showResult &&
                        !(cardsSel[i].definition == cardsSelAnswer[i]))
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Правильно: ${cardsSel[i].definition}',
                          style: getBoldTextStyle(),
                        ),
                      ),
                  ],
                ),
              ),
            TitleStrip(
              title: 'Письмо',
            ),
            for (int i = 0; i < number; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: softColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text(
                            cardsWrt[i].term!,
                            style: getBoldTextStyle(),
                          ),
                        ),
                      ),
                    ),
                    if (showResult)
                      const SizedBox(
                        height: 10,
                      ),
                    WriteInput(
                      isTrue: showResult
                          ? (cardsWrt[i].definition ==
                              forms[i].control('def').value)
                          : null,
                      form: forms[i],
                    ),
                    if (showResult &&
                        !(cardsWrt[i].definition ==
                            forms[i].control('def').value))
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Правильно: ${cardsWrt[i].definition}',
                          style: getBoldTextStyle(),
                        ),
                      ),
                  ],
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ElevatedButton(
                  onPressed: () {
                    showResult ? Navigator.pop(context) : complite();
                  },
                  child: Text(
                    showResult ? 'Закончить просмотр' : 'Завершить',
                    style: buttonTextStyle,
                  ),
                  style: WidgetStyle().elevatedButtonStyle(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    ));
  }
}
