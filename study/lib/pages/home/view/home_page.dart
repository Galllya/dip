import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/home/bloc/home_bloc.dart';
import 'package:study/pages/home/view/home_view.dart';
import 'package:study/pages/home/widgets/drawer.dart';
import 'package:study/pages/home/widgets/speed_deal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    context.read<AccountBloc>().add(const AccountEvent.load());

    homeBloc = HomeBloc();
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
