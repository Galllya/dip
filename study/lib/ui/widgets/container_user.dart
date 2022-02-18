import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/exchange_user/view/exchange_user_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class ContainerUser extends StatelessWidget {
  final AppUser user;
  const ContainerUser({
    Key? key,
    required this.user,
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
                  user: user,
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
                      image: user.photoURL!,
                      radius: 30,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.userName!,
                          style: const TextStyle(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '☆${user.points}',
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
                    user.writeCanAll!
                        ? CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
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
                    user.statCanSeeEvery!
                        ? CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
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
