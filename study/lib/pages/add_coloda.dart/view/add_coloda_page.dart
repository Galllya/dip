import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/add_coloda.dart/bloc/add_coloda_bloc.dart';
import 'package:study/pages/add_coloda.dart/view/add_coloda_view.dart';
import 'package:study/provider/coloda_provider.dart';

class AddColodaPage extends StatefulWidget {
  const AddColodaPage({Key? key}) : super(key: key);

  @override
  State<AddColodaPage> createState() => _AddColodaPageState();
}

class _AddColodaPageState extends State<AddColodaPage> {
  late AddColodaBloc addColodaBloc;

  @override
  void initState() {
    super.initState();
    addColodaBloc = AddColodaBloc(
      colodaProvider: context.read<ColodaProvider>(),
    );
  }

  @override
  void dispose() {
    addColodaBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddColodaBloc>.value(
      value: addColodaBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Добавить колоду'),
          actions: [
            IconButton(
              onPressed: () {
                addColodaBloc.add(const AddColodaEvent.showModal());
              },
              icon: SvgPicture.asset(
                'assets/icons/icon_settings.svg',
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                addColodaBloc.add(const AddColodaEvent.make());
              },
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        body: AddColodaView(
          putColoda: (
            String name,
            String? description,
            List<model.Card> cards,
            Uint8List? file,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String userName,
          ) {
            addColodaBloc.add(AddColodaEvent.putColoda(
              name,
              description,
              cards,
              file,
              showEvery,
              takeMyHaveAuthour,
              tags,
              userName,
            ));
          },
        ),
      ),
    );
  }
}
