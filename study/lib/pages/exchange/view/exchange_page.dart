import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/exchange/bloc/exchange_bloc.dart';
import 'package:study/pages/exchange/view/exchange_view.dart';
import 'package:study/provider/coloda_provider.dart';

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

    exchangeBloc = ExchangeBloc(colodaProvider: context.read<ColodaProvider>());
  }

  @override
  void dispose() {
    exchangeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExchangeBloc>.value(
      value: exchangeBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Обмен'),
        ),
        body: ExchangeView(
          onSearch: (String searchString) {
            exchangeBloc.add(ExchangeEvent.started(searchString));
          },
        ),
      ),
    );
  }
}
