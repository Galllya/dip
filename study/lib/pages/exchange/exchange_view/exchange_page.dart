import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/pages/exchange/bloc/exchange_bloc.dart';
import 'package:study/pages/exchange/exchange_view/exchange_view.dart';
import 'package:study/pages/exchange/exchange_view/users_view.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/coloda_provider.dart';
import 'package:study/ui/sourse/colors.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({Key? key}) : super(key: key);

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  late ExchangeBloc exchangeBloc;

  @override
  void initState() {
    super.initState();

    exchangeBloc = ExchangeBloc(
      userProvider: context.read<UserProvider>(),
      colodaProvider: context.read<ColodaProvider>(),
    );
  }

  @override
  void dispose() {
    exchangeBloc.close();
    super.dispose();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExchangeBloc>.value(
        value: exchangeBloc,
        child: Scaffold(
          appBar: AppBar(
            title: Text(_selectedIndex == 0
                ? 'Обмен'
                : _selectedIndex == 1
                    ? 'Пользователи'
                    : 'Рейтинг'),
          ),
          body: _selectedIndex == 0
              ? ExchangeView(
                  onSearch: (String searchString) {
                    exchangeBloc.add(ExchangeEvent.started(searchString));
                  },
                )
              : _selectedIndex == 1
                  ? UsersView(
                      onSearch: (String searchString) {
                        exchangeBloc.add(ExchangeEvent.loadUsers(searchString));
                      },
                    )
                  : const Text('raiting'),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/icon_change.svg',
                  color: _selectedIndex == 0 ? primaryColor : Colors.grey,
                ),
                label: 'Обмен',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/icon_people.svg',
                  color: _selectedIndex == 1 ? primaryColor : Colors.grey,
                ),
                label: 'Пользователи',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/icon_star.svg',
                  color: _selectedIndex == 2 ? primaryColor : Colors.grey,
                ),
                label: 'Рейтинг',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: primaryCoolColor,
            onTap: _onItemTapped,
          ),
        ));
  }
}
