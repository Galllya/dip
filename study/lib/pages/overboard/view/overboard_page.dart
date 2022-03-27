import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/overboard/bloc/overboard_bloc.dart';
import 'package:study/pages/overboard/view/overboard_view.dart';

class OverboardPage extends StatefulWidget {
  const OverboardPage({Key? key}) : super(key: key);

  @override
  State<OverboardPage> createState() => _OverboardPageState();
}

class _OverboardPageState extends State<OverboardPage> {
  late OverboardBloc overboardBloc;

  @override
  void initState() {
    super.initState();

    overboardBloc = OverboardBloc();
  }

  @override
  void dispose() {
    overboardBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OverboardBloc>.value(
      value: overboardBloc,
      child: const Scaffold(
        body: OverboardView(),
      ),
    );
  }
}
