import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/colods/view/colods_page.dart';
import 'package:study/pages/home/bloc/home_bloc.dart';
import 'package:study/pages/home/widgets/title_slise.dart';
import 'package:study/ui/sourse/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
        builder: (BuildContext context, AccountState accountState) {
      return BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          return accountState.maybeWhen(orElse: () {
            return const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            );
          }, loaded: (user) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                SizedBox(
                  height: 26,
                ),
                TitleSlise(
                  title: 'Колоды',
                  page: ColodsPage(),
                ),
              ],
            );
          });
        },
      );
    });
  }
}
