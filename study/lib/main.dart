import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:study/pages/authorization/view/authorization_page.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/pages/overboard/view/overboard_page.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/chat_provider.dart';
import 'package:study/provider/collection_provider.dart';
import 'package:study/provider/coloda_provider.dart';
import 'package:study/provider/statistic_provider.dart';
import 'package:study/provider/trainings_provider.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/accaunt/account_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storage = FlutterSecureStorage();
  String? value;
  bool loading = false;
  @override
  void initState() {
    startStore();
    super.initState();
  }

  void startStore() async {
    value = await storage.read(key: 'second');
    await storage.write(key: 'second', value: 'true');
    setState(() {
      loading = true;
    });
  }

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
          Provider(
            create: (_) => StatisticProvider(),
          ),
          Provider(
            create: (_) => ChatProvider(),
          ),
          Provider(
            create: (_) => TrainingProvider(),
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
          home: value == null
              ? const OverboardPage()
              : StreamBuilder(
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
