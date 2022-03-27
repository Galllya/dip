import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/collection.dart';
import 'package:study/pages/add_collection/bloc/add_collection_bloc.dart';
import 'package:study/pages/add_collection/view/add_collection_view.dart';
import 'package:study/provider/collection_provider.dart';

class AddCollectionPage extends StatefulWidget {
  const AddCollectionPage({Key? key}) : super(key: key);

  @override
  State<AddCollectionPage> createState() => _AddCollectionPageState();
}

class _AddCollectionPageState extends State<AddCollectionPage> {
  late AddCollectionBloc addCollectionBloc;

  @override
  void initState() {
    super.initState();
    addCollectionBloc = AddCollectionBloc(
        collectionProvider: context.read<CollectionProvider>());
  }

  @override
  void dispose() {
    addCollectionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddCollectionBloc>.value(
        value: addCollectionBloc,
        child: BlocBuilder<AddCollectionBloc, AddCollectionState>(
            builder: (BuildContext context, AddCollectionState state) {
          return Scaffold(
            appBar: AppBar(
                title: const Text('Добавить коллекцию'),
                actions: state.maybeWhen(orElse: () {
                  return [
                    IconButton(
                      onPressed: () {
                        addCollectionBloc.add(const AddCollectionEvent.make());
                      },
                      icon: const Icon(Icons.check),
                    ),
                  ];
                }, loading: () {
                  return [];
                })),
            body: AddCollectionView(
              onTab: (
                Uint8List? file,
                Collection collection,
              ) {
                addCollectionBloc
                    .add(AddCollectionEvent.putCollection(file, collection));
              },
            ),
          );
        }));
  }
}
