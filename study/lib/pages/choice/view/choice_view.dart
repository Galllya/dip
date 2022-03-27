import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/choice/bloc/choice_bloc.dart';
import 'package:study/pages/join/widgets/lose_dialog.dart';
import 'package:study/pages/join/widgets/vall_container.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/close_dialog.dart';
import 'package:study/ui/widgets/modal_join_settiong.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class ChoiceView extends StatefulWidget {
  final List<model.Card> cards;
  final Intro intro;
  const ChoiceView({
    Key? key,
    required this.cards,
    required this.intro,
  }) : super(key: key);

  @override
  State<ChoiceView> createState() => _ChoiceViewState();
}

class _ChoiceViewState extends State<ChoiceView> {
  late List<model.Card> allCards;
  late model.Card nowCard;
  List<int> allPoints = [];
  late List<String> allDef;
  String nowDef = '';
  bool isWrong = false;
  bool infinityRegim = true;
  late int nowMistake, allMistake;
  List<model.Card> selectedCards = [];

  @override
  void initState() {
    allCards = widget.cards;
    allDef = [];
    start();
    nowMistake = 0;

    super.initState();
  }

  void start() {
    allPoints.clear();
    allDef.clear();

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
    for (int i = 0; i < 4; i++) {
      ran = getRandomPoint() + 1;
      allPoints.add(ran);
    }
    allDef.add(nowCard.definition!);

    for (int i = 0; i < 3; i++) {
      ran = getRandom();
      setState(() {
        allDef.add(allCards[ran].definition!);
      });
    }
    allMistake = allCards.length ~/ 20;

    if (allMistake < 1) {
      allMistake = 3;
    } else {
      allMistake += 2;
    }
  }

  int getRandom() {
    int ran = Random().nextInt(allCards.length);

    while (
        allCards[ran] == nowCard || allDef.contains(allCards[ran].definition)) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  int getRandomForInfiniti() {
    int ran = Random().nextInt(allCards.length);

    while (
        allCards[ran] == nowCard || allDef.contains(allCards[ran].definition)) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  int getRandomPoint() {
    int ran = Random().nextInt(4);

    while (allPoints.contains(ran + 1)) {
      ran = Random().nextInt(4);
    }

    return ran;
  }

  void onTab() {
    if (nowCard.definition == nowDef) {
      if (!infinityRegim && selectedCards.length == allCards.length) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CloseDialog(
                next: () {
                  selectedCards.clear();
                  nowMistake = 0;
                  start();
                },
              );
            });
      } else {
        start();
      }
    } else {
      setState(() {
        nowMistake++;
      });
      if (nowMistake == allMistake && !infinityRegim) {
        Future.delayed(const Duration(milliseconds: 300), () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return LoseDialog(
                  next: () {
                    start();
                  },
                );
              });
          setState(() {
            nowMistake = 0;
            selectedCards.clear();
          });
        });
      }
      makeWrong();
    }
  }

  void makeWrong() {
    setState(() {
      isWrong = true;
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isWrong = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChoiceBloc, ChoiceState>(
        listener: (BuildContext context, ChoiceState state) {
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
                      selectedCards.clear();

                      nowMistake = 0;
                    },
                    infinityRegim: infinityRegim,
                    onChange: (
                      bool infinityRegimFromModal,
                    ) {
                      selectedCards.clear();

                      setState(() {
                        infinityRegim = infinityRegimFromModal;
                        nowMistake = 0;
                      });
                      start();
                    },
                  );
                },
              );
            }
          });
    }, child: BlocBuilder<ChoiceBloc, ChoiceState>(
      builder: (BuildContext context, ChoiceState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
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
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: SplashClipper(
                      key: widget.intro.keys[1],
                      decoration: BoxDecoration(
                          color: softColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: primaryColor,
                            width: 1,
                          )),
                      child: Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              nowCard.term!,
                              style: getBoldTextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    key: widget.intro.keys[2],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: ValContainer(
                                isWrong: isWrong &&
                                    allDef[allPoints.indexOf(1)] == nowDef,
                                onTab: () {
                                  nowDef = allDef[allPoints.indexOf(1)];
                                  onTab();
                                },
                                title: allDef[allPoints.indexOf(1)],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ValContainer(
                                isWrong: isWrong &&
                                    allDef[allPoints.indexOf(2)] == nowDef,
                                onTab: () {
                                  nowDef = allDef[allPoints.indexOf(2)];
                                  onTab();
                                },
                                title: allDef[allPoints.indexOf(2)],
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
                              width: double.infinity,
                              child: ValContainer(
                                isWrong: isWrong &&
                                    allDef[allPoints.indexOf(3)] == nowDef,
                                onTab: () {
                                  nowDef = allDef[allPoints.indexOf(3)];
                                  onTab();
                                },
                                title: allDef[allPoints.indexOf(3)],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ValContainer(
                                isWrong: isWrong &&
                                    allDef[allPoints.indexOf(4)] == nowDef,
                                onTab: () {
                                  nowDef = allDef[allPoints.indexOf(4)];
                                  onTab();
                                },
                                title: allDef[allPoints.indexOf(4)],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ));
  }
}
