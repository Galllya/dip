import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/daile_card.dart';
import 'package:study/pages/daily_training/bloc/daily_training_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/loading_custom.dart';

import '../../../ui/widgets/splash_clipper.dart';
import '../../profile/widgets/about_me.dart';

class DailyTrainingView extends StatefulWidget {
  final Function startGame;
  final Function(List<DailyCard> cards) onUpdate;
  final Function endGame;
  final Function noCards;
  const DailyTrainingView({
    Key? key,
    required this.startGame,
    required this.onUpdate,
    required this.endGame,
    required this.noCards,
  }) : super(key: key);

  @override
  State<DailyTrainingView> createState() => _DailyTrainingViewState();
}

class _DailyTrainingViewState extends State<DailyTrainingView> {
  int index = 0;
  int pos = 0;
  bool? isCool;

  List<DailyCard> newCards = [];
  String curVal = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyTrainingBloc, DailyTrainingState>(
      builder: (BuildContext context, DailyTrainingState state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          initial: (cards, cardsTwo, showDelete, lastTrain, loading, showGame,
              endGame, noCards) {
            return loading
                ? const LoadingCustom()
                : DateTime.now().difference(lastTrain!).inDays >= 1
                    ? endGame
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                  child: Text(
                                'Вы завершили тренировку!',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                  child: Text(
                                'Молодец :)',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              Image.asset(
                                'assets/picturies/pic_shop_15.png',
                                height: 200,
                                width: 200,
                              ),
                            ],
                          )
                        : showGame
                            ? StreamBuilder(
                                stream: cardsTwo,
                                builder: (context, AsyncSnapshot snapshot) {
                                  if (snapshot.hasError) {
                                    return const Text(
                                      'Произошла ошибка',
                                    );
                                  }
                                  switch (snapshot.connectionState) {
                                    case ConnectionState.none:
                                      continue waiting;
                                    waiting:
                                    case ConnectionState.waiting:
                                      return const LoadingCustom();
                                    case ConnectionState.active:
                                      continue data_ready;
                                    data_ready:
                                    case ConnectionState.done:
                                      List<DailyCard> dailyCards = [];
                                      snapshot.data!.docs.forEach((element) {
                                        DailyCard cardTest =
                                            DailyCard.fromSnap(element);
                                        if (((cardTest.position == 0) &&
                                                (DateTime.now()
                                                        .difference(
                                                            cardTest.lastTrain!)
                                                        .inDays >=
                                                    1)) ||
                                            ((cardTest.position == 1) &&
                                                (DateTime.now()
                                                        .difference(
                                                            cardTest.lastTrain!)
                                                        .inDays >=
                                                    2)) ||
                                            ((cardTest.position == 2) &&
                                                (DateTime.now()
                                                        .difference(
                                                            cardTest.lastTrain!)
                                                        .inDays >=
                                                    3)) ||
                                            ((cardTest.position == 3) &&
                                                (DateTime.now()
                                                        .difference(
                                                            cardTest.lastTrain!)
                                                        .inDays >=
                                                    7))) {
                                          dailyCards.add(cardTest);
                                        }
                                      });
                                      DailyCard card = const DailyCard();
                                      if (dailyCards.isNotEmpty) {
                                        card = dailyCards[index];
                                      } else {
                                        widget.noCards();
                                      }
                                      return dailyCards.isEmpty
                                          ? Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Center(
                                                    child: Text(
                                                  'У вас сейчас нет карт на повторение',
                                                  style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Center(
                                                    child: Text(
                                                  'Добавьте новые на следующей странице ->',
                                                  style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                                Image.asset(
                                                  'assets/picturies/pic_shop_5.png',
                                                  height: 200,
                                                  width: 200,
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 20),
                                                  child: Slider(
                                                    value: index.toDouble(),
                                                    max: snapshot
                                                            .data!.docs.length
                                                            .toDouble() -
                                                        1,
                                                    label: index
                                                        .round()
                                                        .toString(),
                                                    onChanged:
                                                        (double value) {},
                                                    activeColor: primaryColor,
                                                    thumbColor: primaryColor,
                                                    inactiveColor: softColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 350,
                                                  width: 300,
                                                  child: SplashClipper(
                                                    decoration: BoxDecoration(
                                                        color: softColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                          color: primaryColor,
                                                          width: 1,
                                                        )),
                                                    child: Material(
                                                      type: MaterialType
                                                          .transparency,
                                                      child: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            pos == 0
                                                                ? pos = 1
                                                                : pos = 0;
                                                          });
                                                        },
                                                        child: Center(
                                                          child: Text(
                                                            pos == 0
                                                                ? card
                                                                    .card!.term!
                                                                : card.card!
                                                                    .definition!,
                                                            style:
                                                                getBoldTextStyle(),
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
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            pos = 0;
                                                          });
                                                          DailyCard dailyCard =
                                                              DailyCard(
                                                            card: card.card,
                                                            lastTrain:
                                                                DateTime.now(),
                                                            position:
                                                                card.position! +
                                                                    1,
                                                            id: card.id,
                                                          );

                                                          newCards
                                                              .add(dailyCard);

                                                          if (dailyCards
                                                                  .length >
                                                              index + 1) {
                                                            setState(() {
                                                              index++;
                                                            });
                                                          } else {
                                                            widget.onUpdate(
                                                                newCards);
                                                            widget.endGame();
                                                          }
                                                        },
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor:
                                                              primaryColor,
                                                          child: SvgPicture.asset(
                                                              'assets/icons/icon_ok.svg'),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            pos = 0;
                                                          });
                                                          DailyCard dailyCard =
                                                              DailyCard(
                                                            lastTrain:
                                                                DateTime.now(),
                                                            card: card.card,
                                                            position:
                                                                card.position ==
                                                                        0
                                                                    ? 0
                                                                    : card.position! -
                                                                        1,
                                                            id: card.id,
                                                          );
                                                          newCards
                                                              .add(dailyCard);
                                                          if (dailyCards
                                                                  .length >
                                                              index + 1) {
                                                            setState(() {
                                                              index++;
                                                            });
                                                          } else {
                                                            widget.onUpdate(
                                                                newCards);
                                                            widget.endGame();
                                                          }
                                                        },
                                                        child: CircleAvatar(
                                                          radius: 30,
                                                          backgroundColor:
                                                              primaryColor,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/icons/icon_close.svg',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                  }
                                },
                              )
                            : Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    widget.startGame();
                                  },
                                  child: const Text(
                                    ('НАЧАТЬ'),
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: primaryColor,
                                      fixedSize: const Size(260, 260),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(180))),
                                ),
                              )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Center(
                              child: Text(
                            'Вы уже потренировались сегодня!',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                              child: Text(
                            'Следующая тренировка завтра :)',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                          Image.asset(
                            'assets/picturies/pic_shop_11.png',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      );
          },
        );
      },
    );
  }
}
