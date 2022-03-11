import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/daily_training/bloc/daily_training_bloc.dart';
import 'package:study/pages/daily_training/view/daily_training_view.dart';

class DailyTrainingPage extends StatefulWidget {
  const DailyTrainingPage({Key? key}) : super(key: key);

  @override
  State<DailyTrainingPage> createState() => _DailyTrainingPageState();
}

class _DailyTrainingPageState extends State<DailyTrainingPage> {
  late DailyTrainingBloc dailyTrainingBloc;

  @override
  void initState() {
    super.initState();

    dailyTrainingBloc = DailyTrainingBloc();
  }

  @override
  void dispose() {
    dailyTrainingBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DailyTrainingBloc>.value(
      value: dailyTrainingBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ежедневная тренировка'),
        ),
        body: const DailyTrainingView(),
      ),
    );
  }
}
