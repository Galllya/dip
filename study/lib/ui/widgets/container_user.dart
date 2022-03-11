import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/pages/chat_detail/view/chat_detail_page.dart';
import 'package:study/pages/exchange_user/view/exchange_user_page.dart';
import 'package:study/pages/stat_user/view/stat_user_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class ContainerUser extends StatelessWidget {
  bool fromProfile;
  String uid;
  String photoURL;
  String userName;
  int points;
  bool writeCanAll;
  bool statCanSeeEvery;
  ContainerUser({
    Key? key,
    this.fromProfile = false,
    required this.uid,
    required this.photoURL,
    required this.userName,
    required this.points,
    required this.writeCanAll,
    required this.statCanSeeEvery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashClipper(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: primaryColor,
          width: 2,
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
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
                          '☆$points',
                          style: const TextStyle(
                              color: primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    writeCanAll
                        ? CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatDetailPage(
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
                            width: 60,
                          ),
                    const SizedBox(
                      width: 4,
                    ),
                    statCanSeeEvery
                        ? CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 30,
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
                            width: 60,
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
