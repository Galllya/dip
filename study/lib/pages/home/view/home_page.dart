import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/home/bloc/home_bloc.dart';
import 'package:study/pages/home/view/home_view.dart';
import 'package:study/pages/home/widgets/drawer.dart';
import 'package:study/pages/home/widgets/speed_deal.dart';
import 'package:study/provider/collection_provider.dart';
import 'package:study/provider/coloda_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc homeBloc;

  bool shouldStart = false;
  @override
  void initState() {
    super.initState();
    context.read<AccountBloc>().add(const AccountEvent.load());

    homeBloc = HomeBloc(
      collectionProvider: context.read<CollectionProvider>(),
      colodaProvider: context.read<ColodaProvider>(),
    )..add(const HomeEvent.started());
  }

  @override
  void dispose() {
    homeBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>.value(
        value: homeBloc,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Главная'),
          ),
          drawer: const DrawerCustom(),
          body: const HomeView(),
          floatingActionButton: const SpeedDealCustom(),
        ));
  }
}
