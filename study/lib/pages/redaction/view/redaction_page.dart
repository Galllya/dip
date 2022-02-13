import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/pages/redaction/bloc/redaction_bloc.dart';
import 'package:study/pages/redaction/view/redaction_view.dart';
import 'package:study/provider/coloda_provider.dart';

class RedactionPage extends StatefulWidget {
  final DetailColoda coloda;
  const RedactionPage({
    Key? key,
    required this.coloda,
  }) : super(key: key);

  @override
  State<RedactionPage> createState() => _RedactionPageState();
}

class _RedactionPageState extends State<RedactionPage> {
  late RedactionBloc redactionBloc;

  @override
  void initState() {
    super.initState();

    redactionBloc =
        RedactionBloc(colodaProvider: context.read<ColodaProvider>());
  }

  @override
  void dispose() {
    redactionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RedactionBloc>.value(
      value: redactionBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Редактирование'),
          actions: [
            IconButton(
                onPressed: () {
                  redactionBloc.add(const RedactionEvent.make());
                },
                icon: const Icon(Icons.check))
          ],
        ),
        body: RedactionView(
          updateColoda: ({
            String? name,
            String? description,
            List<model.Card>? cards,
            String? photoURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            required String uid,
            DateTime? dateNow,
            Uint8List? file,
          }) {
            redactionBloc.add(RedactionEvent.updateColod(
                name,
                description,
                cards,
                photoURL,
                showEvery,
                takeMyHaveAuthour,
                tags,
                uid,
                dateNow,
                file));
          },
          coloda: widget.coloda,
        ),
      ),
    );
  }
}
