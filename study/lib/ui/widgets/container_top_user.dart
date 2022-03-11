import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/pages/chat_detail/view/chat_detail_page.dart';
import 'package:study/pages/exchange_user/view/exchange_user_page.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/stat_user/view/stat_user_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class ContainerTopUser extends StatelessWidget {
  final bool fromProfile;
  final String uid;
  final String uidCur;
  int? help;
  final String photoURL;
  final String userName;
  final int points;
  final bool writeCanAll;
  final bool statCanSeeEvery;
  final int index;
  int? sub;
  ContainerTopUser({
    Key? key,
    this.fromProfile = false,
    required this.uid,
    required this.photoURL,
    required this.userName,
    required this.points,
    required this.writeCanAll,
    required this.statCanSeeEvery,
    required this.index,
    required this.uidCur,
    this.help,
    this.sub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashClipper(
      decoration: BoxDecoration(
        color: uid == uidCur ? softColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: primaryColor,
          width: 2,
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: uid == uidCur
              ? null
              : () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExchangeUserPage(
                        fromProfile: fromProfile,
                        uid: uid,
                      ),
                    ),
                  );
                },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    index < 3
                        ? Image.asset(
                            'assets/picturies/pic_top_${index + 1}.png')
                        : Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: getBoldTextStyle(),
                              ),
                              SvgPicture.asset(
                                'assets/icons/icon_slim_star.svg',
                                height: 80,
                                width: 80,
                              ),
                            ],
                          ),
                    Row(
                      children: [
                        GetImage(
                          image: photoURL,
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              help == null
                                  ? '☆$points'
                                  : sub == null
                                      ? 'Колод взяли: $help'
                                      : 'Подписчиков: $sub',
                              style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                uid == uidCur
                    ? Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Text(
                            'вы',
                            style: getBoldTextStyle(),
                          ),
                          const Icon(
                            Icons.circle_outlined,
                            color: primaryColor,
                            size: 80,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          writeCanAll
                              ? CircleAvatar(
                                  backgroundColor: primaryColor,
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChatDetailPage(
                                                    imageId: photoURL,
                                                    name: userName,
                                                    uid: uid,
                                                  )));
                                    },
                                    icon: SvgPicture.asset(
                                      'assets/icons/icon_message.svg',
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 40,
                                ),
                          const SizedBox(
                            height: 4,
                          ),
                          statCanSeeEvery
                              ? CircleAvatar(
                                  backgroundColor: primaryColor,
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => StatUserPage(
                                            uid: uid,
                                          ),
                                        ),
                                      );
                                    },
                                    icon: SvgPicture.asset(
                                      'assets/icons/icon_stat.svg',
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 40,
                                ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
