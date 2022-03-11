import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/daily_training/bloc/daily_training_bloc.dart';
import 'package:study/pages/daily_training/view/daily_training_view.dart';
import 'package:study/pages/settings/bloc/settings_bloc.dart';
import 'package:study/pages/settings/view/settings_view.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late SettingsBloc settingsBloc;

  @override
  void initState() {
    super.initState();

    settingsBloc = SettingsBloc();
  }

  @override
  void dispose() {
    settingsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>.value(
      value: settingsBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Настройки'),
        ),
        body: const SettingsView(),
      ),
    );
  }
}
