import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/raiting/bloc/raiting_bloc.dart';
import 'package:study/pages/raiting/view/raiting_view.dart';
import 'package:study/provider/account_provider.dart';

class RaitingPage extends StatefulWidget {
  const RaitingPage({Key? key}) : super(key: key);

  @override
  State<RaitingPage> createState() => _RaitingPageState();
}

class _RaitingPageState extends State<RaitingPage> {
  late RaitingBloc raitingBloc;

  @override
  void initState() {
    super.initState();

    raitingBloc = RaitingBloc(userProvider: context.read<UserProvider>())
      ..add(const RaitingEvent.started());
  }

  @override
  void dispose() {
    raitingBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RaitingBloc>.value(
      value: raitingBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Рейтинг'),
        ),
        body: const RaitingView(),
      ),
    );
  }
}
