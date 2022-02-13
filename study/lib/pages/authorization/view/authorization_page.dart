import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/authorization/bloc/authorization_bloc.dart';
import 'package:study/pages/authorization/view/authorization_view.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  late AuthorizationBloc authorizationBloc;

  @override
  void initState() {
    super.initState();

    authorizationBloc = AuthorizationBloc();
  }

  @override
  void dispose() {
    authorizationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthorizationBloc>.value(
      value: authorizationBloc,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: AuthorizationView(
          autUser: (
            String email,
            String password,
          ) {
            authorizationBloc.add(AuthorizationEvent.autUser(email, password));
          },
        ),
      ),
    );
  }
}
