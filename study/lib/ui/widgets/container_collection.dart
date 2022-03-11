import 'package:flutter/material.dart';
import 'package:study/models/collection.dart';
import 'package:study/pages/collection/view/collection_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';
import 'package:intl/intl.dart';
import 'package:study/ui/widgets/tags_wrap.dart';

class ContainerCollection extends StatelessWidget {
  final Collection collection;
  final bool showTegs;
  final bool? cantTab;
  final bool? fromHome;

  const ContainerCollection({
    Key? key,
    this.showTegs = false,
    required this.collection,
    this.cantTab,
    this.fromHome = false,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CollectionPage(
                        fromHome: fromHome,
                        collectioId: collection.collectionId!,
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
                            collection.name!,
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
                            "${collection.colodsId!.length} ${Intl.plural(
                              collection.colodsId!.length,
                              locale: 'ru',
                              other: 'колоды',
                              one: 'колода',
                              two: 'колоды',
                              few: 'колоды',
                              many: 'колод',
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
                    collection.imageURL != ''
                        ? Image(
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              collection.imageURL!,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                if (collection.tags!.isNotEmpty && showTegs)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TagsWrap(tags: collection.tags!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
