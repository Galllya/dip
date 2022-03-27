import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/collection.dart';
import 'package:study/pages/collection/view/collection_page.dart';
import 'package:study/pages/redaction_collection/bloc/redaction_collection_bloc.dart';
import 'package:study/pages/redaction_collection/view/redaction_collection_view.dart';
import 'package:study/provider/collection_provider.dart';

class RedactionCollectionPage extends StatefulWidget {
  final Collection collection;
  const RedactionCollectionPage({
    required this.collection,
    Key? key,
  }) : super(key: key);

  @override
  State<RedactionCollectionPage> createState() =>
      _RedactionCollectionPageState();
}

class _RedactionCollectionPageState extends State<RedactionCollectionPage> {
  late RedactionCollectionBloc redactionCollectionBloc;

  @override
  void initState() {
    super.initState();

    redactionCollectionBloc = RedactionCollectionBloc(
        collectionProvider: context.read<CollectionProvider>())
      ..add(RedactionCollectionEvent.started(widget.collection.colodsId!));
  }

  @override
  void dispose() {
    redactionCollectionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RedactionCollectionBloc>.value(
      value: redactionCollectionBloc,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const Text('Редактирование'),
          actions: [
            IconButton(
                onPressed: () {
                  redactionCollectionBloc
                      .add(const RedactionCollectionEvent.beginUpdate());
                },
                icon: const Icon(Icons.check))
          ],
        ),
        body: RedactionCollectionView(
          collection: widget.collection,
          updateColoda: (Collection collection, Uint8List? file) {
            redactionCollectionBloc
                .add(RedactionCollectionEvent.update(collection, file));
          },
        ),
      ),
    );
  }
}
