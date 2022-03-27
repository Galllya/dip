import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/join/bloc/join_bloc.dart';
import 'package:study/pages/join/widgets/lose_dialog.dart';
import 'package:study/ui/widgets/modal_join_settiong.dart';
import 'package:study/pages/join/widgets/vall_container.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/widgets/close_dialog.dart';

class JoinView extends StatefulWidget {
  final List<model.Card> cards;
  final Intro intro;
  const JoinView({
    Key? key,
    required this.cards,
    required this.intro,
  }) : super(key: key);

  @override
  State<JoinView> createState() => _JoinViewState();
}

class _JoinViewState extends State<JoinView> {
  late List<model.Card> allCards;
  late List<model.Card?> allCardsWatched;
  late List<model.Card?> cardsNowTerm;
  late List<model.Card?> cardsNowDef;
  late List<model.Card> allCardsFull;

  late bool infinityRegim;
  late int allMistake;
  late int nowMistake;
  String? selectTerm;
  String? selectDef;
  late bool isWrong;

  @override
  void initState() {
    allCards = widget.cards;
    allCardsWatched = [];
    cardsNowTerm = [];
    cardsNowDef = [];
    allCardsFull = [];
    isWrong = false;
    infinityRegim = true;
    startNow();
    nowMistake = 0;
    allMistake = allCards.length ~/ 20;

    if (allMistake < 1) {
      allMistake = 3;
    } else {
      allMistake += 2;
    }
    super.initState();
  }

  void startNow() {
    cardsNowDef.clear();
    cardsNowTerm.clear();
    nowMistake = 0;
    allCardsWatched.clear();
    allCardsFull.clear();
    setState(() {
      for (int i = 0; i < 6; i++) {
        int ran = getRandom();
        cardsNowTerm.add(allCards.elementAt(ran));
        cardsNowDef.add(allCards.elementAt(ran));
        allCardsFull.add(allCards.elementAt(ran));
      }
      cardsNowDef.shuffle();
    });
  }

  int getRandom() {
    int ran = Random().nextInt(allCards.length);
    while (cardsNowTerm.contains(allCards[ran])) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  void tabCheck() {
    if (selectDef != null && selectTerm != null) {
      if (rightCheck()) {
        setState(
          () {
            cardsNowDef[cardsNowDef.indexWhere((element) {
              if (element != null) {
                return element.definition == selectDef;
              } else {
                return false;
              }
            })] = null;
            cardsNowTerm[cardsNowTerm.indexWhere((element) {
              if (element != null) {
                return element.term == selectTerm;
              } else {
                return false;
              }
            })] = null;
            selectDef = null;
            selectTerm = null;
          },
        );
        if (cardsNowTerm.where((element) => element != null).isEmpty) {
          setState(() {
            infinityRegim ? startNow() : nextTern();
          });
        }
      } else {
        makeWrong();
      }
    }
  }

  void nextTern() {
    for (var element in cardsNowDef) {
      allCardsWatched.add(element);
    }

    if (allCards.length <= allCardsWatched.length) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CloseDialog(
              next: () {
                startNow();
              },
            );
          });
    } else {
      cardsNowDef.clear();
      cardsNowTerm.clear();

      int num;
      if ((allCards.length - allCardsWatched.length) >= 6) {
        num = 6;
      } else {
        num = allCards.length - ((allCardsWatched.length) ~/ 6) * 6;
      }
      setState(() {
        for (int i = 0; i < num; i++) {
          int ran = getRandomForNotInfiniti();
          cardsNowTerm.add(allCards.elementAt(ran));
          cardsNowDef.add(allCards.elementAt(ran));
          allCardsFull.add(allCards.elementAt(ran));
        }
        cardsNowDef.shuffle();
      });
    }
  }

  int getRandomForNotInfiniti() {
    int ran = Random().nextInt(allCards.length);

    while (allCardsFull.contains(
      allCards[ran],
    )) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  void makeWrong() {
    setState(() {
      isWrong = true;
      nowMistake++;
    });

    if (nowMistake == allMistake && !infinityRegim) {
      Future.delayed(const Duration(milliseconds: 300), () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return LoseDialog(
                next: () {
                  startNow();
                },
              );
            });
      });
    }

    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        isWrong = false;
        selectDef = null;
        selectTerm = null;
      });
    });
  }

  bool rightCheck() {
    if (allCards.indexWhere((element) => element.term == selectTerm) ==
        allCards.indexWhere((element) => element.definition == selectDef)) {
      return true;
    } else {
      return false;
    }
  }

  List<model.Card> removeFromList(List<model.Card> list) {
    return list
        .where(
          (element) =>
              element !=
              allCards.elementAt(
                  allCards.indexWhere((element) => element.term == selectTerm)),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JoinBloc, JoinState>(
        listener: (BuildContext context, JoinState state) {
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
                      startNow();
                    },
                    infinityRegim: infinityRegim,
                    onChange: (
                      bool infinityRegimFromModal,
                    ) {
                      setState(() {
                        infinityRegim = infinityRegimFromModal;
                      });
                      startNow();
                    },
                  );
                },
              );
            }
          });
    }, child: BlocBuilder<JoinBloc, JoinState>(
      builder: (BuildContext context, JoinState state) {
        return Padding(
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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      key: widget.intro.keys[1],
                      children: [
                        ...cardsNowTerm.map(
                          (e) => e != null
                              ? ValContainer(
                                  onTab: () {
                                    if (!isWrong) {
                                      selectTerm = e.term;
                                      tabCheck();
                                    }
                                  },
                                  title: e.term!,
                                  isWrong: (e.term == selectTerm && isWrong),
                                )
                              : const SizedBox(
                                  height: 80,
                                ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      key: widget.intro.keys[2],
                      children: [
                        ...cardsNowDef.map(
                          (e) => e != null
                              ? ValContainer(
                                  isWrong:
                                      (e.definition == selectDef && isWrong),
                                  onTab: () {
                                    if (!isWrong) {
                                      selectDef = e.definition;
                                      tabCheck();
                                    }
                                  },
                                  title: e.definition!,
                                )
                              : const SizedBox(
                                  height: 80,
                                ),
                        )
                      ],
                    ),
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
