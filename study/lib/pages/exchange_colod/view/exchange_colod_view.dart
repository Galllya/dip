import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/pages/exchange_colod/bloc/exchange_colod_bloc.dart';
import 'package:study/pages/exchange_colod/widgets/about.dart';
import 'package:study/pages/exchange_colod/widgets/cards.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class ExchangeColodView extends StatefulWidget {
  final ColodaAll coloda;
  final Function putColoda;
  const ExchangeColodView({
    Key? key,
    required this.coloda,
    required this.putColoda,
  }) : super(key: key);

  @override
  State<ExchangeColodView> createState() => _ExchangeColodViewState();
}

class _ExchangeColodViewState extends State<ExchangeColodView> {
  late int randomNumber;
  Random random = Random();
  late int currentSelection;
  late String userName;

  @override
  void initState() {
    randomNumber = random.nextInt(4);
    randomNumber++;
    currentSelection = 0;

    context.read<AccountBloc>().state.maybeWhen(
          orElse: () {},
          loaded: (user) {
            userName = user.userName!;
          },
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: Text(
        'Карточки',
        style: currentSelection == 0
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      1: Text(
        'О колоде',
        style: currentSelection == 1
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
    };

    return BlocListener<ExchangeColodBloc, ExchangeColodState>(
        listener: (BuildContext context, ExchangeColodState state) {
      state.maybeWhen(
        orElse: () {},
        error: (error) {
          ScaffoldMessenger.of(context).showSnackBar(
              CustomScaffoldMessages().show(title: 'Произошла ошибка'));
        },
        success: () {
          ScaffoldMessenger.of(context).showSnackBar(
            CustomScaffoldMessages().show(
              title: 'Колода скопированна! Можете найти ее в своих колодах!',
            ),
          );
        },
      );
    }, child: BlocBuilder<ExchangeColodBloc, ExchangeColodState>(
      builder: (BuildContext context, ExchangeColodState state) {
        return state.maybeWhen(
          orElse: () {
            return ListView(
              children: [
                DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: primaryColor,
                  ),
                  child: Column(
                    children: [
                      widget.coloda.imageURL! == ''
                          ? Image(
                              height: 200,
                              width: 200,
                              image: AssetImage(
                                'assets/picturies/pic_st_$randomNumber.png',
                              ),
                            )
                          : CircleAvatar(
                              radius: 72,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 70,
                                backgroundImage: NetworkImage(
                                  widget.coloda.imageURL!,
                                ),
                              ),
                            ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.coloda.name!,
                        style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.coloda.takeMyHaveAuthour!
                            ? '@${widget.coloda.authorName!}'
                            : '@застенчивый',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: WidgetStyle().whiteElevatedButtonStyle(),
                            onPressed: () {
                              widget.putColoda(
                                  '${widget.coloda.name} (копия)',
                                  widget.coloda.description,
                                  widget.coloda.cards,
                                  widget.coloda.imageURL,
                                  true,
                                  true,
                                  widget.coloda.tags,
                                  userName,
                                  widget.coloda.uid);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/icon_copy.svg',
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'скопировать себе',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Column(
                          children: [
                            Text(
                              widget.coloda.cards!.length.toString(),
                              style: const TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                            Text(
                              ' ${Intl.plural(
                                widget.coloda.cards!.length,
                                locale: 'ru',
                                other: 'карты',
                                one: 'карточка',
                                two: 'карточки',
                                few: 'карточки',
                                many: 'карточек',
                              )}',
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                MaterialSegmentedControl(
                  children: _children,
                  selectionIndex: currentSelection,
                  borderColor: primaryColor,
                  selectedColor: primaryColor,
                  unselectedColor: Colors.white,
                  borderRadius: 32.0,
                  onSegmentChosen: (int index) {
                    setState(() {
                      currentSelection = index;
                    });
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                if (currentSelection == 0)
                  Cards(
                    cards: widget.coloda.cards!,
                  ),
                if (currentSelection == 1)
                  About(
                    coloda: widget.coloda,
                  ),
              ],
            );
          },
          loading: () {
            return const LoadingCustom();
          },
        );
      },
    ));
  }
}
