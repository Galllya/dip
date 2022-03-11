import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/chat/view/chat_page.dart';
import 'package:study/pages/daily_training/view/daily_training_page.dart';
import 'package:study/pages/exchange/exchange_view/exchange_page.dart';
import 'package:study/pages/profile/view/profile_page.dart';
import 'package:study/pages/raiting/view/raiting_page.dart';
import 'package:study/pages/settings/view/settings_page.dart';
import 'package:study/pages/shop/view/shop_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/text_style.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
        builder: (BuildContext context, AccountState accountState) {
      return Drawer(
        child: accountState.maybeMap(orElse: () {
          return const LoadingCustom();
        }, loaded: (user) {
          return ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetImage(
                      image: user.user.photoURL!,
                      radius: 50,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            user.user.userName!,
                            style: headerTextStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            user.user.email!,
                            style: headerTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: SvgPicture.asset('assets/icons/icon_home.svg'),
                title: Text(
                  'Главная',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/icon_time.svg',
                  color: primaryColor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DailyTrainingPage()));
                },
                title: Text(
                  'Ежедневная тренировка',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExchangePage()));
                },
                leading: SvgPicture.asset('assets/icons/icon_exchange.svg'),
                title: Text(
                  'Обмен',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset('assets/icons/icon_star.svg'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RaitingPage()));
                },
                title: Text(
                  'Рейтинг',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset('assets/icons/icon_profile.svg'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(
                                appUser: user.user,
                              )));
                },
                title: Text(
                  'Профиль',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShopPage(
                                points: user.user.realPoints!,
                                buied: user.user.buyed!,
                              )));
                },
                leading: SvgPicture.asset(
                  'assets/icons/icon_shop.svg',
                  color: primaryColor,
                ),
                title: Text(
                  'Магазин',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset('assets/icons/icon_chat.svg'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatPage()));
                },
                title: Text(
                  'Чат',
                  style: customTextColor(),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                },
                leading: SvgPicture.asset('assets/icons/icon_settings.svg'),
                title: Text(
                  'Настройки',
                  style: customTextColor(),
                ),
              ),
            ],
          );
        }),
      );
    });
  }
}

TextStyle customTextColor() {
  return const TextStyle(color: primaryColor);
}
