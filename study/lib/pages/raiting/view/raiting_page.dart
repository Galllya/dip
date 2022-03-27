import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/pages/raiting/bloc/raiting_bloc.dart';
import 'package:study/pages/raiting/view/raiting_view.dart';
import 'package:study/provider/account_provider.dart';

class RaitingPage extends StatefulWidget {
  final bool haveNewColod;
  const RaitingPage({
    Key? key,
    this.haveNewColod = false,
  }) : super(key: key);

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
          leading: IconButton(
            onPressed: () {
              !widget.haveNewColod
                  ? Navigator.pop(context)
                  : Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: const RaitingView(),
      ),
    );
  }
}
