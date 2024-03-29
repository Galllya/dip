import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/colod/bloc/colod_bloc.dart';
import 'package:study/pages/colod/widgets/about.dart';
import 'package:study/pages/colod/widgets/cards.dart';
import 'package:study/pages/colod/widgets/modal_setting.dart';
import 'package:study/pages/colod/widgets/regime.dart';
import 'package:study/pages/redaction/view/redaction_page.dart';
import 'package:study/pages/stat_colod/view/stat_colod_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class ColodaView extends StatefulWidget {
  final Function onDeleteColod;
  final Function updateAfterSuccsess;
  final Function closePage;
  final String? fromCollection;

  final Function({
    String? name,
    String? description,
    List<model.Card>? cards,
    String? photoURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    required String uid,
    DateTime? dateNow,
  }) updateColod;
  const ColodaView({
    required this.updateAfterSuccsess,
    Key? key,
    required this.updateColod,
    required this.onDeleteColod,
    required this.closePage,
    this.fromCollection,
  }) : super(key: key);

  @override
  State<ColodaView> createState() => _ColodaViewState();
}

class _ColodaViewState extends State<ColodaView> {
  late int currentSelection;
  final Uint8List u8 = Uint8List(12);
  final PageController controller = PageController();
  Random random = Random();
  late int randomNumber;

  @override
  void initState() {
    randomNumber = random.nextInt(4);
    randomNumber++;

    currentSelection = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: Text(
        'Режимы',
        style: currentSelection == 0
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      1: Text(
        'Карточки',
        style: currentSelection == 1
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      2: Text(
        'О колоде',
        style: currentSelection == 2
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
    };
    return BlocListener<ColodBloc, ColodState>(
        listener: (BuildContext context, ColodState state) {
      state.maybeWhen(
        orElse: () {},
        loaded: (coloda, isUpdationg, isSuccses, isDeleteProccess,
            isDeleteSuccess) {
          if (isSuccses != null) {
            if (!isSuccses) {
              ScaffoldMessenger.of(context).showSnackBar(
                  CustomScaffoldMessages()
                      .show(title: 'Не получилось обновить'));
            } else {
              widget.updateAfterSuccsess();
            }
          }
          if (isDeleteSuccess != null) {
            if (isDeleteSuccess) {
              widget.closePage();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  CustomScaffoldMessages()
                      .show(title: 'Не получилось удалить'));
            }
          }
        },
      );
    }, child: BlocBuilder<AccountBloc, AccountState>(
      builder: (BuildContext context, AccountState accountState) {
        return BlocBuilder<ColodBloc, ColodState>(
          builder: (BuildContext context, ColodState state) {
            return accountState.maybeWhen(orElse: () {
              return const Center(
                child: Text('Произошла ошибка'),
              );
            }, loaded: (user) {
              return state.maybeWhen(orElse: () {
                return const SizedBox();
              }, loading: () {
                return const LoadingCustom();
              }, error: (error) {
                return Center(
                  child: Text(error!),
                );
              }, loaded: (coloda, isUpdationg, isSuccses, isDeleteProccess,
                  isDeleteSuccess) {
                return isDeleteProccess
                    ? const LoadingCustom()
                    : ListView(
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
                                coloda.imageURL! == ''
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
                                            coloda.imageURL!,
                                          ),
                                        ),
                                      ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  coloda.name!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '@${user.userName!}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        child: ElevatedButton(
                                          style: WidgetStyle()
                                              .whiteElevatedButtonStyle()
                                              .copyWith(
                                                  backgroundColor: isUpdationg
                                                      ? MaterialStateProperty
                                                          .all<Color>(
                                                              Colors.grey)
                                                      : MaterialStateProperty
                                                          .all<Color>(
                                                              Colors.white)),
                                          onPressed: isUpdationg
                                              ? null
                                              : () {
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          RedactionPage(
                                                        fromCollection: widget
                                                            .fromCollection,
                                                        coloda: coloda,
                                                      ),
                                                    ),
                                                  );
                                                },
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/icon_pan.svg',
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              const Text(
                                                'редактировать',
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
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    StatColodPage(
                                                  colodId: coloda.colodId!,
                                                ),
                                              ),
                                            );
                                          },
                                          icon: SvgPicture.asset(
                                            'assets/icons/icon_stat.svg',
                                          ),
                                        ),
                                      ),
                                      isUpdationg
                                          ? const SizedBox(
                                              height: 60,
                                              width: 60,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 30,
                                              child: IconButton(
                                                onPressed: () {
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(20),
                                                        topRight:
                                                            Radius.circular(20),
                                                      ),
                                                    ),
                                                    builder:
                                                        (BuildContext context) {
                                                      return ModalSetting(
                                                        deleteColod: () {
                                                          widget
                                                              .onDeleteColod();
                                                        },
                                                        showEvery:
                                                            coloda.showEvery!,
                                                        takeMyHaveAuthor: coloda
                                                            .takeMyHaveAuthour!,
                                                        onChange: (bool
                                                                showEvery,
                                                            bool
                                                                takeMyHaveAuthour) {
                                                          widget.updateColod(
                                                            cards: coloda.cards,
                                                            name: coloda.name,
                                                            dateNow: coloda
                                                                .dateCreate,
                                                            photoURL:
                                                                coloda.imageURL,
                                                            description: coloda
                                                                .description,
                                                            showEvery:
                                                                showEvery,
                                                            tags: coloda.tags,
                                                            takeMyHaveAuthour:
                                                                takeMyHaveAuthour,
                                                            uid:
                                                                coloda.colodId!,
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                },
                                                icon: SvgPicture.asset(
                                                  'assets/icons/icon_settings.svg',
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            coloda.cards!.length.toString(),
                                            style: const TextStyle(
                                                fontSize: 27,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            ' ${Intl.plural(
                                              coloda.cards!.length,
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
                            Regime(
                              numberCards: coloda.cards!.length,
                              cards: coloda.cards!,
                              colodId: coloda.colodId!,
                            ),
                          if (currentSelection == 1)
                            Cards(
                              cards: coloda.cards!,
                            ),
                          if (currentSelection == 2)
                            About(
                              created: coloda.dateCreate!,
                              description: coloda.description == ''
                                  ? ''
                                  : coloda.description!,
                              tags: coloda.tags!,
                            ),
                        ],
                      );
              });
            });
          },
        );
      },
    ));
  }
}
