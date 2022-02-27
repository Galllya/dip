import 'package:flutter/material.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/pages/colod/view/colod_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';
import 'package:intl/intl.dart';
import 'package:study/ui/widgets/tags_wrap.dart';

class ContainerColoda extends StatelessWidget {
  final Coloda coloda;
  final bool showTegs;
  final Function? onSelect;
  final bool? cantTab;

  const ContainerColoda({
    Key? key,
    this.showTegs = false,
    required this.coloda,
    this.onSelect,
    this.cantTab,
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
                        builder: (context) => ColodPage(
                          colodId: coloda.colodId!,
                        ),
                      ),
                    );
                  } else {
                    onSelect!(coloda);
                    Navigator.pop(context);
                  }
                },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
