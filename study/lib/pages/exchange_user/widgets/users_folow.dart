import 'package:flutter/cupertino.dart';
import 'package:study/models/another_user.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/widgets/container_user.dart';

class UsersFolow extends StatelessWidget {
  final List<AnotherUser> users;

  const UsersFolow({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return users.length == 0
        ? Center(
            child: Text(
              'У пользователя пока нет подписок',
              style: getBoldTextStyle(),
            ),
          )
        : ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ...users.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ContainerUser(
                      uid: e.uid!,
                      photoURL: e.photoURL!,
                      userName: e.userName!,
                      points: e.points!,
                      writeCanAll: e.writeCanAll!,
                      statCanSeeEvery: e.statCanSeeEvery!),
                ),
              ),
            ],
          );
  }
}
