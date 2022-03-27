import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/all_cards/bloc/all_cards_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class AllCardsView extends StatefulWidget {
  final Function fromTraining;

  const AllCardsView({
    Key? key,
    required this.fromTraining,
  }) : super(key: key);

  @override
  State<AllCardsView> createState() => _AllCardsViewState();
}

class _AllCardsViewState extends State<AllCardsView> {
  List<model.Card> selected = [];
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AllCardsBloc, AllCardsState>(
        listener: (BuildContext context, AllCardsState state) {
      state.maybeWhen(
        loaded: (colod, send) {
          if (send) {
            widget.fromTraining(selected);
            Navigator.pop(context);
            Navigator.pop(context);
          }
        },
        orElse: () {},
      );
    }, child: BlocBuilder<AllCardsBloc, AllCardsState>(
      builder: (BuildContext context, AllCardsState state) {
        return state.maybeWhen(orElse: () {
          return const SizedBox();
        }, loading: () {
          return const LoadingCustom();
        }, error: (error) {
          return const Center(
            child: Text('Произошла ошибка'),
          );
        }, loaded: (coloda, send) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: primaryColor,
                    value: value,
                    onChanged: (bool? valueNow) {
                      setState(() {
                        value = valueNow!;
                        if (valueNow) {
                          selected = coloda.cards!;
                        } else {
                          selected = [];
                        }
                      });
                    },
                  ),
                  const Text(
                    'все',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ...coloda.cards!.map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: SplashClipper(
                      clipRadius: 20,
                      decoration: BoxDecoration(
                        color: selected.contains(e)
                            ? lightPrimaryColor
                            : softColor,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selected.contains(e)
                                  ? selected.remove(e)
                                  : selected.add(e);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          e.term!,
                                          style: TextStyle(
                                              color: selected.contains(e)
                                                  ? Colors.white
                                                  : primaryColor,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  height: 70,
                                  color: selected.contains(e)
                                      ? Colors.white
                                      : primaryColor,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            e.definition!,
                                            style: TextStyle(
                                                color: selected.contains(e)
                                                    ? Colors.white
                                                    : primaryColor,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          );
        });
      },
    ));
  }
}
