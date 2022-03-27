import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/models/daile_card.dart';
import 'package:study/pages/daily_training/bloc/daily_training_bloc.dart';
import 'package:study/pages/daily_training/widgets/card_daily_container.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class DailyCardsView extends StatefulWidget {
  final Function({required String id}) onDelete;
  const DailyCardsView({
    Key? key,
    required this.onDelete,
  }) : super(key: key);

  @override
  State<DailyCardsView> createState() => _DailyCardsViewState();
}

class _DailyCardsViewState extends State<DailyCardsView> {
  int currentSelection = 0;
  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: Text(
        'В процессе',
        style: currentSelection == 0
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      1: Text(
        'Изученны',
        style: currentSelection == 1
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
    };
    return BlocBuilder<DailyTrainingBloc, DailyTrainingState>(
      builder: (BuildContext context, DailyTrainingState state) {
        return state.maybeWhen(orElse: () {
          return const SizedBox();
        }, initial: (cards, cardsTwo, showDelete, lastTrain, loading, showGame,
            endGame, noCards) {
          return StreamBuilder(
            stream: cards,
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
                  return ListView(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialSegmentedControl(
                        children: _children,
                        selectionIndex: currentSelection,
                        borderColor: primaryColor,
                        selectedColor: primaryColor,
                        unselectedColor: Colors.white,
                        borderRadius: 32,
                        onSegmentChosen: (int index) {
                          setState(() {
                            currentSelection = index;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (currentSelection == 0)
                        for (int i = 0; i < snapshot.data!.docs.length; i++)
                          if (DailyCard.fromSnap(snapshot.data!.docs[i])
                                  .position !=
                              4)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                              child: Stack(
                                children: [
                                  CardDailyContainer(
                                    card: DailyCard.fromSnap(
                                        snapshot.data!.docs[i]),
                                  ),
                                  showDelete == true
                                      ? Positioned(
                                          left: 10,
                                          top: 10,
                                          child: InkWell(
                                            onTap: () {
                                              widget.onDelete(
                                                id: DailyCard.fromSnap(
                                                        snapshot.data!.docs[i])
                                                    .id!,
                                              );
                                            },
                                            child: SvgPicture.asset(
                                              'assets/icons/icon_close.svg',
                                              color: primaryColor,
                                            ),
                                          ),
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                      if (currentSelection == 1)
                        for (int i = 0; i < snapshot.data!.docs.length; i++)
                          if (DailyCard.fromSnap(snapshot.data!.docs[i])
                                  .position ==
                              4)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                              child: Stack(
                                children: [
                                  CardDailyContainer(
                                    card: DailyCard.fromSnap(
                                        snapshot.data!.docs[i]),
                                  ),
                                  showDelete == true
                                      ? Positioned(
                                          left: 10,
                                          top: 10,
                                          child: InkWell(
                                            onTap: () {
                                              widget.onDelete(
                                                id: DailyCard.fromSnap(
                                                        snapshot.data!.docs[i])
                                                    .id!,
                                              );
                                            },
                                            child: SvgPicture.asset(
                                              'assets/icons/icon_close.svg',
                                              color: primaryColor,
                                            ),
                                          ),
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                    ],
                  );
              }
            },
          );
        });
      },
    );
  }
}
