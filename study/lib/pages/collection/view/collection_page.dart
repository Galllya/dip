import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/collection/bloc/collection_bloc.dart';
import 'package:study/pages/collection/view/collection_view.dart';
import 'package:study/pages/collections/view/collections_page.dart';
import 'package:study/provider/collection_provider.dart';

class CollectionPage extends StatefulWidget {
  final String collectioId;
  const CollectionPage({
    Key? key,
    required this.collectioId,
  }) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  late CollectionBloc collectionBloc;

  @override
  void initState() {
    super.initState();

    collectionBloc =
        CollectionBloc(collectionProvider: context.read<CollectionProvider>())
          ..add(CollectionEvent.started(widget.collectioId));
  }

  @override
  void dispose() {
    collectionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CollectionBloc>.value(
      value: collectionBloc,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CollectionsPage()), (route) {
                return route.isFirst;
              });
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: CollectionView(
          closePage: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const CollectionsPage()), (route) {
              return route.isFirst;
            });
          },
          onDeleteColod: () {
            collectionBloc
                .add(CollectionEvent.deleteColoda(widget.collectioId));
          },
        ),
      ),
    );
  }
}
