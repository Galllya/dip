import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/profile/bloc/profile_bloc.dart';
import 'package:study/pages/profile/view/profile_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;

  @override
  void initState() {
    super.initState();

    profileBloc = ProfileBloc();
  }

  @override
  void dispose() {
    profileBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>.value(
      value: profileBloc,
      child: Scaffold(
        appBar: AppBar(),
        body: const ProfileView(),
      ),
    );
  }
}
