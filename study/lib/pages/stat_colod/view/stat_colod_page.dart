import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/stat_colod/bloc/stat_colod_bloc.dart';
import 'package:study/pages/stat_colod/view/stat_colod_view.dart';
import 'package:study/provider/statistic_provider.dart';

class StatColodPage extends StatefulWidget {
  final String colodId;
  const StatColodPage({
    Key? key,
    required this.colodId,
  }) : super(key: key);

  @override
  State<StatColodPage> createState() => _StatColodPageState();
}

class _StatColodPageState extends State<StatColodPage> {
  late StatColodBloc statColodBloc;

  @override
  void initState() {
    super.initState();

    statColodBloc =
        StatColodBloc(statisticProvider: context.read<StatisticProvider>())
          ..add(StatColodEvent.started(widget.colodId));
  }

  @override
  void dispose() {
    statColodBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StatColodBloc>.value(
      value: statColodBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Статистика'),
        ),
        body: const StatColodView(),
      ),
    );
  }
}
