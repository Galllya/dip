import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/profile_redaction.dart/bloc/profile_redaction_bloc.dart';
import 'package:study/pages/profile_redaction.dart/view/profile_redaction_view.dart';
import 'package:study/provider/account_provider.dart';

class ProfileRedactionPage extends StatefulWidget {
  final AppUser appUser;

  const ProfileRedactionPage({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  @override
  State<ProfileRedactionPage> createState() => _ProfileRedactionPageState();
}

class _ProfileRedactionPageState extends State<ProfileRedactionPage> {
  late ProfileRedactionBloc profileRedactionBloc;

  @override
  void initState() {
    super.initState();

    profileRedactionBloc =
        ProfileRedactionBloc(userProvider: context.read<UserProvider>());
  }

  @override
  void dispose() {
    profileRedactionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileRedactionBloc>.value(
      value: profileRedactionBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Редактирование'),
          actions: [
            IconButton(
                onPressed: () {
                  profileRedactionBloc.add(const ProfileRedactionEvent.make());
                },
                icon: const Icon(Icons.check)),
          ],
        ),
        body: ProfileRedactionView(
          onUpdate: (
            AppUser appUser,
            Uint8List? file,
          ) {
            profileRedactionBloc
                .add(ProfileRedactionEvent.update(appUser, file));
          },
          appUser: widget.appUser,
        ),
      ),
    );
  }
}
