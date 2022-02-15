import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/exchange/view/exchange_page.dart';
import 'package:study/pages/profile/view/profile_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/text_style.dart';
import 'package:study/ui/widgets/get_image.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
        builder: (BuildContext context, AccountState accountState) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
              child: accountState.maybeWhen(orElse: () {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              }, loaded: (user) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetImage(
                      image: user.photoURL!,
                      radius: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          user.userName!,
                          style: headerTextStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          user.email!,
                          style: headerTextStyle,
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/icons/icon_home.svg'),
              title: Text(
                'Главная',
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
              leading: SvgPicture.asset('assets/icons/icon_profile.svg'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              title: Text(
                'Профиль',
                style: customTextColor(),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/icons/icon_garden.svg'),
              title: Text(
                'Сад',
                style: customTextColor(),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/icons/icon_chat.svg'),
              title: Text(
                'Чат',
                style: customTextColor(),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/icons/icon_settings.svg'),
              title: Text(
                'Настройки',
                style: customTextColor(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

TextStyle customTextColor() {
  return const TextStyle(color: primaryColor);
}
