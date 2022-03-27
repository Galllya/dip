import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/daile_card.dart';
import 'package:study/pages/colods/view/colods_page.dart';
import 'package:study/pages/daily_training/bloc/daily_training_bloc.dart';
import 'package:study/pages/daily_training/view/daily_cards_view.dart';
import 'package:study/pages/daily_training/view/daily_training_view.dart';
import 'package:study/provider/trainings_provider.dart';
import 'package:study/ui/sourse/colors.dart';

class DailyTrainingPage extends StatefulWidget {
  const DailyTrainingPage({Key? key}) : super(key: key);

  @override
  State<DailyTrainingPage> createState() => _DailyTrainingPageState();
}

class _DailyTrainingPageState extends State<DailyTrainingPage> {
  late DailyTrainingBloc dailyTrainingBloc;

  @override
  void initState() {
    super.initState();

    dailyTrainingBloc = DailyTrainingBloc(
      trainingProvider: context.read<TrainingProvider>(),
    )..add(const DailyTrainingEvent.started());
  }

  @override
  void dispose() {
    dailyTrainingBloc.close();
    super.dispose();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DailyTrainingBloc>.value(
        value: dailyTrainingBloc,
        child: BlocBuilder<DailyTrainingBloc, DailyTrainingState>(
            builder: (BuildContext context, DailyTrainingState state) {
          return state.when(initial: (cards, cardsTwo, showDelete, lastTrain,
              loading, showGame, endGame, noCards) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Ежедневная тренировка'),
                actions: showGame && !noCards
                    ? []
                    : [
                        if (_selectedIndex == 1)
                          IconButton(
                            onPressed: () {
                              dailyTrainingBloc
                                  .add(const DailyTrainingEvent.startDelete());
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        if (_selectedIndex == 1)
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ColodsPage(
                                      fromTraining: (List<model.Card> cards) {
                                        dailyTrainingBloc.add(
                                            DailyTrainingEvent.addCard(cards));
                                      },
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.add))
                      ],
              ),
              body: _selectedIndex == 0
                  ? DailyTrainingView(
                      noCards: () {
                        dailyTrainingBloc
                            .add(const DailyTrainingEvent.noCards());
                      },
                      endGame: () {
                        dailyTrainingBloc
                            .add(const DailyTrainingEvent.endGame());
                      },
                      onUpdate: (List<DailyCard> cards) {
                        dailyTrainingBloc
                            .add(DailyTrainingEvent.updateCards(cards));
                      },
                      startGame: () {
                        dailyTrainingBloc
                            .add(const DailyTrainingEvent.startGame());
                      },
                    )
                  : DailyCardsView(
                      onDelete: ({required String id}) {
                        dailyTrainingBloc
                            .add(DailyTrainingEvent.deleteCard([id]));
                      },
                    ),
              bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/icon_time.svg',
                      color: _selectedIndex == 0 ? primaryColor : Colors.grey,
                    ),
                    label: 'Тренировка',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/icon_change.svg',
                      color: _selectedIndex == 1 ? primaryColor : Colors.grey,
                    ),
                    label: 'Карточки',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: primaryCoolColor,
                onTap: _onItemTapped,
              ),
            );
          });
        }));
  }
}
