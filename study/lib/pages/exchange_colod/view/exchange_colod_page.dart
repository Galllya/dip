import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/pages/exchange_colod/bloc/exchange_colod_bloc.dart';
import 'package:study/pages/exchange_colod/view/exchange_colod_view.dart';

class ExchangeColodPage extends StatefulWidget {
  final ColodaAll coloda;

  const ExchangeColodPage({
    Key? key,
    required this.coloda,
  }) : super(key: key);

  @override
  State<ExchangeColodPage> createState() => _ExchangeColodPageState();
}

class _ExchangeColodPageState extends State<ExchangeColodPage> {
  late ExchangeColodBloc exchangeColodBloc;

  @override
  void initState() {
    super.initState();

    exchangeColodBloc = ExchangeColodBloc();
  }

  @override
  void dispose() {
    exchangeColodBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExchangeColodBloc>.value(
      value: exchangeColodBloc,
      child: Scaffold(
        appBar: AppBar(),
        body: ExchangeColodView(
          coloda: widget.coloda,
        ),
      ),
    );
  }
}
