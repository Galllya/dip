import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/stat_user/bloc/stat_user_bloc.dart';
import 'package:study/pages/stat_user/view/stat_user_view.dart';
import 'package:study/provider/statistic_provider.dart';

class StatUserPage extends StatefulWidget {
  final AppUser? appUser;
  final String? uid;
  const StatUserPage({
    Key? key,
    this.appUser,
    this.uid,
  }) : super(key: key);

  @override
  State<StatUserPage> createState() => _StatUserPageState();
}

class _StatUserPageState extends State<StatUserPage> {
  late StatUserBloc statUserBloc;

  @override
  void initState() {
    super.initState();

    statUserBloc =
        StatUserBloc(statisticProvider: context.read<StatisticProvider>())
          ..add(StatUserEvent.started(widget.uid));
  }

  @override
  void dispose() {
    statUserBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StatUserBloc>.value(
      value: statUserBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Статистика'),
        ),
        body: StatUserView(
          appUser: widget.appUser,
        ),
      ),
    );
  }
}
