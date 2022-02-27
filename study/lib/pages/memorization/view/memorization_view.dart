import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/memorization/bloc/memorization_bloc.dart';
import 'package:study/ui/widgets/close_dialog.dart';
import 'package:study/pages/memorization/widgets/modal_memo_settion..dart';
import 'package:study/pages/memorization/widgets/strip_card_val.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class MemorizationView extends StatefulWidget {
  final List<model.Card> cards;

  const MemorizationView({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  State<MemorizationView> createState() => _MemorizationViewState();
}

class _MemorizationViewState extends State<MemorizationView> {
  late List<model.Card> allCards;
  late List<model.Card> notTouchCards;
  late List<model.Card> touchCards;
  late List<int> touchPoints;
  late List<model.Card> goodCards;
  late int indexCardNow;
  late int lernNow;

  @override
  void initState() {
    allCards = widget.cards;
    notTouchCards = allCards;
    touchCards = [];
    goodCards = [];
    touchPoints = [];
    lernNow = (allCards.length / 4).toInt() + 3;

    int randomNumber = Random().nextInt(allCards.length);
    indexCardNow = randomNumber;
    notTouchCards = removeFromList(notTouchCards, randomNumber);
    addToList(touchCards, randomNumber);

    for (int i = 0; i < allCards.length; i++) {
      touchPoints.add(0);
    }
    super.initState();
  }

  bool mainValContr = true;
  bool locValContr = true;

  int getRandom() {
    int ran = Random().nextInt(allCards.length);
    while (!notTouchCards.contains(allCards[ran])) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  int getRandomFromCurrent() {
    int ran = Random().nextInt(allCards.length);
    while (!touchCards.contains(allCards[ran])) {
      ran = Random().nextInt(allCards.length);
    }
    return ran;
  }

  List<model.Card> removeFromList(List<model.Card> list, int index) {
    return list
        .where((element) => element != allCards.elementAt(index))
        .toList();
  }

  void addToList(List<model.Card> list, int index) {
    list.add(allCards.elementAt(index));
  }

  void next() {
    setState(() {
      allCards = widget.cards;
      notTouchCards = allCards;
      touchCards = [];
      goodCards = [];
      touchPoints = [];
      lernNow = (allCards.length / 4).toInt() + 3;

      int randomNumber = Random().nextInt(allCards.length);
      indexCardNow = randomNumber;
      notTouchCards = removeFromList(notTouchCards, randomNumber);
      addToList(touchCards, randomNumber);

      for (int i = 0; i < allCards.length; i++) {
        touchPoints.add(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MemorizationBloc, MemorizationState>(
        listener: (BuildContext context, MemorizationState state) {
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
                  return ModalMemoSetting(
                    onRefresh: () {
                      next();
                    },
                    mainValContr: mainValContr,
                    onChange: (
                      bool mainValContr1,
                    ) {
                      setState(() {
                        mainValContr = mainValContr1;
                        locValContr = mainValContr;
                      });
                    },
                  );
                },
              );
            }
          });
    }, child: BlocBuilder<MemorizationBloc, MemorizationState>(
      builder: (BuildContext context, MemorizationState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StripCardVal(
                      allCard: allCards.length.toString(),
                      picName: 'angry',
                      thisCard: notTouchCards.length.toString(),
                    ),
                    SvgPicture.asset(
                      'assets/icons/icon_ar_right.svg',
                      color: primaryColor,
                    ),
                    StripCardVal(
                      allCard: allCards.length.toString(),
                      picName: 'netral',
                      thisCard: touchCards.length.toString(),
                    ),
                    SvgPicture.asset(
                      'assets/icons/icon_ar_right.svg',
                      color: primaryColor,
                    ),
                    StripCardVal(
                      allCard: allCards.length.toString(),
                      picName: 'heppy',
                      thisCard: goodCards.length.toString(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                width: 300,
                child: SplashClipper(
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
                      onTap: () {
                        setState(() {
                          locValContr = !locValContr;
                        });
                      },
                      child: Center(
                        child: Text(
                          mainValContr
                              ? locValContr
                                  ? allCards
                                      .elementAt(indexCardNow)
                                      .term
                                      .toString()
                                  : allCards
                                      .elementAt(indexCardNow)
                                      .definition
                                      .toString()
                              : locValContr
                                  ? allCards
                                      .elementAt(indexCardNow)
                                      .term
                                      .toString()
                                  : allCards
                                      .elementAt(indexCardNow)
                                      .definition
                                      .toString(),
                          style: getBoldTextStyle(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            locValContr = mainValContr;

                            if (notTouchCards.isEmpty && touchCards.isEmpty) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CloseDialog(
                                      next: () {
                                        next();
                                      },
                                    );
                                  });
                            } else {
                              touchPoints[indexCardNow]++;
                              if (lernNow > touchCards.length &&
                                  notTouchCards.isNotEmpty) {
                                int ran = getRandom();
                                notTouchCards =
                                    removeFromList(notTouchCards, ran);
                                addToList(touchCards, ran);
                                indexCardNow = getRandomFromCurrent();
                              } else {
                                if (touchPoints[indexCardNow] > 3) {
                                  touchCards =
                                      removeFromList(touchCards, indexCardNow);
                                  if (goodCards.length < allCards.length) {
                                    addToList(goodCards, indexCardNow);
                                  }
                                  if (notTouchCards.isNotEmpty) {
                                    indexCardNow = getRandom();

                                    notTouchCards = removeFromList(
                                        notTouchCards, indexCardNow);
                                    addToList(touchCards, indexCardNow);
                                  }
                                }
                                if (touchCards.isNotEmpty) {
                                  indexCardNow = getRandomFromCurrent();
                                }
                              }
                            }
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child: SvgPicture.asset('assets/icons/icon_ok.svg'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          locValContr = mainValContr;

                          if (notTouchCards.isEmpty && touchCards.isEmpty) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CloseDialog(
                                    next: () {
                                      next();
                                    },
                                  );
                                });
                          } else {
                            touchPoints[indexCardNow]--;
                            if (lernNow > touchCards.length &&
                                notTouchCards.isNotEmpty) {
                              int ran = getRandom();
                              notTouchCards =
                                  removeFromList(notTouchCards, ran);
                              addToList(touchCards, ran);
                            }
                            indexCardNow = getRandomFromCurrent();
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child: SvgPicture.asset(
                          'assets/icons/icon_close.svg',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}

TextStyle getStyleUp() {
  return const TextStyle(
    color: primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
