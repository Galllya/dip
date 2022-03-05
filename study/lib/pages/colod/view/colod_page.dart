import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/collection/view/collection_page.dart';
import 'package:study/pages/colod/bloc/colod_bloc.dart';
import 'package:study/pages/colod/view/colod_view.dart';
import 'package:study/pages/colods/view/colods_page.dart';
import 'package:study/provider/coloda_provider.dart';

class ColodPage extends StatefulWidget {
  final String colodId;
  final String? fromCollection;

  const ColodPage({
    Key? key,
    required this.colodId,
    this.fromCollection,
  }) : super(key: key);

  @override
  State<ColodPage> createState() => _ColodPageState();
}

class _ColodPageState extends State<ColodPage> {
  late ColodBloc colodBloc;
  late String? fromCollection;

  @override
  void initState() {
    super.initState();
    fromCollection = widget.fromCollection;
    colodBloc = ColodBloc(colodaProvider: context.read<ColodaProvider>())
      ..add(ColodEvent.started(widget.colodId));
  }

  @override
  void dispose() {
    colodBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColodBloc>.value(
      value: colodBloc,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => fromCollection == null
                        ? const ColodsPage()
                        : CollectionPage(collectioId: fromCollection!),
                  ), (route) {
                return route.isFirst;
              });
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: ColodaView(
          fromCollection: fromCollection,
          closePage: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => fromCollection == null
                      ? const ColodsPage()
                      : CollectionPage(collectioId: fromCollection!),
                ), (route) {
              return route.isFirst;
            });
          },
          onDeleteColod: () {
            colodBloc.add(ColodEvent.deleteColoda(widget.colodId));
          },
          updateAfterSuccsess: () {
            colodBloc.add(ColodEvent.loadAfterUpdate(widget.colodId));
          },
          updateColod: ({
            String? name,
            String? description,
            List<model.Card>? cards,
            String? photoURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            required String uid,
            DateTime? dateNow,
          }) {
            colodBloc.add(
              ColodEvent.updateColoda(name, description, cards, photoURL,
                  showEvery, takeMyHaveAuthour, tags, uid, dateNow),
            );
          },
        ),
      ),
    );
  }
}
