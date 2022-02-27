import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:study/pages/authorization/view/authorization_page.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/collection_provider.dart';
import 'package:study/provider/coloda_provider.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/accaunt/account_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountBloc>(
          create: (BuildContext context) =>
              AccountBloc(userProvider: UserProvider()),
        ),
      ],
      child: MultiProvider(
        providers: [
          Provider(
            create: (_) => UserProvider(),
          ),
          Provider(
            create: (_) => ColodaProvider(),
          ),
          Provider(
            create: (_) => CollectionProvider(),
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en', 'US'),
            const Locale('ru', 'RU'),
          ],
          title: 'Study',
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: StreamBuilder(
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
      ),
    );
  }
}
