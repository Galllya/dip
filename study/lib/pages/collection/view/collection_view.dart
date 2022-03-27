import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/collection/bloc/collection_bloc.dart';
import 'package:study/pages/collection/widgets/collection_detail.dart';
import 'package:study/pages/collection/widgets/colods.dart';
import 'package:study/pages/collection/widgets/modal_delete.dart';
import 'package:study/pages/redaction_collection/view/redaction_collection_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class CollectionView extends StatefulWidget {
  final Function onDeleteColod;
  final Function closePage;

  const CollectionView({
    Key? key,
    required this.onDeleteColod,
    required this.closePage,
  }) : super(key: key);

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
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
        'Колоды',
        style: currentSelection == 0
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      1: Text(
        'О коллекции',
        style: currentSelection == 1
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
    };
    return BlocListener<CollectionBloc, CollectionState>(
        listener: (BuildContext context, CollectionState state) {
      state.maybeWhen(
        orElse: () {},
        loaded: (collection, colods, isDeleteProccess, isDeleteSuccess) {
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
        return BlocBuilder<CollectionBloc, CollectionState>(
          builder: (BuildContext context, CollectionState state) {
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
              }, loaded:
                  (collection, colods, isDeleteProccess, isDeleteSuccess) {
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
                                collection.imageURL! == ''
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
                                            collection.imageURL!,
                                          ),
                                        ),
                                      ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  collection.name!,
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
                                      Expanded(
                                        child: SizedBox(
                                          height: 60,
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            style: WidgetStyle()
                                                .whiteElevatedButtonStyle(),
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RedactionCollectionPage(
                                                    collection: collection,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                ),
                                              ),
                                              builder: (BuildContext context) {
                                                return ModalDelete(
                                                  deleteColod: () {
                                                    widget.onDeleteColod();
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
                                            collection.colodsId!.length
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 27,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            ' ${Intl.plural(
                                              collection.colodsId!.length,
                                              locale: 'ru',
                                              other: 'колоды',
                                              one: 'колода',
                                              two: 'колоды',
                                              few: 'колоды',
                                              many: 'колод',
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
                            Colods(
                              collectionId: collection.collectionId!,
                              colods: colods!,
                            ),
                          if (currentSelection == 1)
                            CollectionDetail(
                              collection: collection,
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
