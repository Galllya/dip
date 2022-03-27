import 'package:flutter/material.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/pages/all_cards/view/all_cards_page.dart';
import 'package:study/pages/colod/view/colod_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';
import 'package:intl/intl.dart';
import 'package:study/ui/widgets/tags_wrap.dart';

class ContainerColoda extends StatelessWidget {
  final Function? onDelete;
  final Coloda coloda;
  final bool showTegs;
  final Function? onSelect;
  final bool? cantTab;
  final String? fromCollection;
  final bool? fromHome;
  final Function? fromTraining;

  const ContainerColoda({
    Key? key,
    this.showTegs = false,
    required this.coloda,
    this.onSelect,
    this.cantTab,
    this.fromCollection,
    this.onDelete,
    this.fromHome = false,
    this.fromTraining,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashClipper(
      decoration: BoxDecoration(
        color: softColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: cantTab != null
              ? null
              : () {
                  if (onSelect == null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fromTraining == null
                                ? fromCollection == null
                                    ? ColodPage(
                                        colodId: coloda.colodId!,
                                        fromHome: fromHome,
                                      )
                                    : ColodPage(
                                        colodId: coloda.colodId!,
                                        fromCollection: fromCollection,
                                      )
                                : AllCardsPage(
                                    uid: coloda.colodId!,
                                    fromTraining: fromTraining!)));
                  } else {
                    onSelect!(coloda);
                    Navigator.pop(context);
                  }
                },
          child: Padding(
            padding: onDelete == null
                ? const EdgeInsets.symmetric(horizontal: 12, vertical: 24)
                : const EdgeInsets.fromLTRB(12, 0, 12, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (onDelete != null)
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        onDelete!(coloda);
                      },
                      iconSize: 20,
                      icon: const Icon(
                        Icons.close,
                        color: primaryColor,
                      ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coloda.name!,
                            maxLines: 3,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: primaryColor),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "${coloda.cards} ${Intl.plural(
                              coloda.cards!,
                              locale: 'ru',
                              other: 'карты',
                              one: 'карта',
                              two: 'карты',
                              few: 'карты',
                              many: 'карт',
                            )}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: lightPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    coloda.imageURL != ''
                        ? Image(
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              coloda.imageURL!,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                if (coloda.tags!.isNotEmpty && showTegs)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TagsWrap(tags: coloda.tags!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
