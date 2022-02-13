import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/profile/bloc/profile_bloc.dart';
import 'package:study/pages/profile/view/profile_view.dart';
import 'package:study/provider/account_provider.dart';

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

    profileBloc = ProfileBloc(userProvider: context.read<UserProvider>())
      ..add(const ProfileEvent.started());
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
        body: ProfileView(
          onUpdate: (AppUser appUser) {
            profileBloc.add(ProfileEvent.update(appUser));
            context.read<AccountBloc>().add(const AccountEvent.load());
          },
          onLogOut: () {
            profileBloc.add(const ProfileEvent.logOut());
          },
        ),
      ),
    );
  }
}
