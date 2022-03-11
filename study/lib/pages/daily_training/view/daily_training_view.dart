import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/daily_training/bloc/daily_training_bloc.dart';

class DailyTrainingView extends StatelessWidget {
  const DailyTrainingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyTrainingBloc, DailyTrainingState>(
      builder: (BuildContext context, DailyTrainingState state) {
        return const Center(child: Text('Ежедневная тренировка'));
      },
    );
  }
}
