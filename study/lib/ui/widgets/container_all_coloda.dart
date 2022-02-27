import 'package:flutter/material.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/pages/exchange_colod/view/exchange_colod_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';
import 'package:intl/intl.dart';
import 'package:study/ui/widgets/tags_wrap.dart';

class ContainerAllColoda extends StatelessWidget {
  final ColodaAll coloda;
  final bool showTegs;
  const ContainerAllColoda({
    Key? key,
    this.showTegs = false,
    required this.coloda,
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExchangeColodPage(
                  coloda: coloda,
                ),
              ),
            );
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
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  coloda.takeMyHaveAuthour!
                                      ? '@${coloda.authorName!}'
                                      : '@застенчивый',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: primaryColor,
                                  ),
                                ),
                                Text(
                                  "${coloda.cards!.length} ${Intl.plural(
                                    coloda.cards!.length,
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
