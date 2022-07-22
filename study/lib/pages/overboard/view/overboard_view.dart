import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:study/pages/authorization/view/authorization_page.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/pages/overboard/bloc/overboard_bloc.dart';
import 'package:study/ui/sourse/colors.dart';

class OverboardView extends StatelessWidget {
  const OverboardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      PageModel(
        color: greenColor,
        imageAssetPath: 'assets/picturies/pic_onbord_1.png',
        title: 'Создавайте',
        titleColor: primaryColor,
        body: ' свои колоды или воспользуйтесь уже существующими',
        doAnimateImage: true,
      ),
      PageModel(
        color: softColor,
        imageAssetPath: 'assets/picturies/pic_onbord_2.png',
        title: 'Используйте',
        titleColor: primaryColor,
        body: 'семь режимов обучения',
        bodyColor: primaryColor,
        doAnimateImage: true,
      ),
      PageModel(
        color: greenColor,
        imageAssetPath: 'assets/picturies/pic_onbord_3.png',
        title: 'Отслеживайте',
        titleColor: primaryColor,
        body: 'достижения других пользователей и делитесь своими',
        doAnimateImage: true,
      ),
      PageModel(
        color: softColor,
        imageAssetPath: 'assets/picturies/pic_onbord_4.png',
        title: 'Общайтесь',
        titleColor: primaryColor,
        body: 'с интерестными людьми',
        bodyColor: primaryColor,
        doAnimateImage: true,
      ),
      PageModel(
        color: greenColor,
        imageAssetPath: 'assets/picturies/pic_onbord_5.png',
        title: 'Получай',
        titleColor: primaryColor,
        body: 'и трать бонусы',
        doAnimateImage: true,
      ),
      PageModel(
        color: softColor,
        imageAssetPath: 'assets/picturies/pic_onbord_6.png',
        title: 'Покажи себя',
        titleColor: primaryColor,
        body: '- попади в рейтинг',
        bodyColor: primaryColor,
        doAnimateImage: true,
      ),
    ];

    void getToPage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  return const HomePage();
                } else {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('${snapshot.error}'),
                    );
                  }
                }
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(
                  color: primaryColor,
                );
              }
              return const AuthorizationPage();
            },
          ),
        ),
      );
    }

    return BlocBuilder<OverboardBloc, OverboardState>(
      builder: (BuildContext context, OverboardState state) {
        return OverBoard(
          pages: pages,
          buttonColor: primaryColor,
          activeBulletColor: primaryColor,
          showBullets: true,
          nextText: 'СЛЕДУЮЩАЯ',
          skipText: 'ПРОПУСТИТЬ',
          finishText: 'ЗАКОНЧИТЬ',
          skipCallback: () {
            getToPage();
          },
          finishCallback: () {
            getToPage();
          },
        );
      },
    );
  }
}
