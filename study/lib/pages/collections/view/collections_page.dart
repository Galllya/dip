import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/pages/add_collection/view/add_collection_page.dart';
import 'package:study/pages/collections/bloc/collections_bloc.dart';
import 'package:study/pages/collections/view/collections_view.dart';
import 'package:study/pages/colods/widgets/end_drawer_in_colods.dart';
import 'package:study/provider/collection_provider.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  late CollectionsBloc collectionsBloc;

  @override
  void initState() {
    super.initState();

    collectionsBloc = CollectionsBloc(
      collectionProvider: context.read<CollectionProvider>(),
    )..add(
        const CollectionsEvent.started(0),
      );
  }

  @override
  void dispose() {
    collectionsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CollectionsBloc>.value(
      value: collectionsBloc,
      child: BlocBuilder<CollectionsBloc, CollectionsState>(
        builder: (BuildContext context, CollectionsState state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Коллекции'),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddCollectionPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.my_library_add)),
                IconButton(
                  onPressed: () {
                    collectionsBloc
                        .add(const CollectionsEvent.changeShowString());
                  },
                  icon: state.maybeWhen(orElse: () {
                    return SvgPicture.asset(
                      'assets/icons/icon_search.svg',
                    );
                  }, loaded: (colods, shodShow, cardsFilter) {
                    return shodShow
                        ? SvgPicture.asset(
                            'assets/icons/icon_close.svg',
                            color: Colors.white,
                            height: 24,
                            width: 24,
                          )
                        : SvgPicture.asset(
                            'assets/icons/icon_search.svg',
                          );
                  }),
                ),
                Builder(
                  builder: (context) => IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/icon_filter.svg',
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                ),
              ],
            ),
            endDrawer: EndDrawerInColods(
              title: 'колод',
              val: state.maybeWhen(orElse: () {
                return -1;
              }, loaded: (colods, searchString, val) {
                return val;
              }),
              onSelect: (int cardsFilter) {
                collectionsBloc.add(
                  CollectionsEvent.changeFilter(cardsFilter),
                );
              },
            ),
            body: CollectionsView(
              onClose: () {
                collectionsBloc.add(
                  CollectionsEvent.started(
                    state.maybeWhen(orElse: () {
                      return 0;
                    }, loaded: (colods, searchString, val) {
                      return val;
                    }),
                  ),
                );
              },
              onSearch: (String searchString, bool isTagsSearch) {
                collectionsBloc.add(
                  CollectionsEvent.search(searchString, isTagsSearch),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
