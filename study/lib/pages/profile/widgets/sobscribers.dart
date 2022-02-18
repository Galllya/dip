import 'package:flutter/material.dart';
import 'package:study/models/another_user.dart';

class Sobscribers extends StatelessWidget {
  final List<AnotherUser> users;
  const Sobscribers({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ...users.map(
          (e) => Text(e.userName!),
        ),
      ],
    );
  }
}
