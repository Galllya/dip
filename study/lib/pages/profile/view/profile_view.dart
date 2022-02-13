import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/profile/bloc/profile_bloc.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/profile/widgets/friends.dart';
import 'package:study/pages/profile/widgets/sobscribers.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late int currentSelection;

  @override
  void initState() {
    currentSelection = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: Text(
        'Друзья',
        style: currentSelection == 0
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      1: Text(
        'Подписки',
        style: currentSelection == 1
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      2: Text(
        'О себе',
        style: currentSelection == 2
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
    };
    return BlocBuilder<AccountBloc, AccountState>(
        builder: (BuildContext context, AccountState accountState) {
      return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (BuildContext context, ProfileState state) {
          return accountState.maybeWhen(orElse: () {
            return const SizedBox();
          }, loading: () {
            return const LoadingCustom();
          }, error: (error) {
            return const Center(child: Text('Произошла ошибка'));
          }, loaded: (user) {
            return ListView(
              children: [
                DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: primaryColor,
                  ),
                  child: Column(
                    children: [
                      user.photoURL! == ''
                          ? GetImage(
                              image: user.photoURL!,
                              radius: 50,
                            )
                          : CircleAvatar(
                              radius: 72,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 70,
                                backgroundImage: NetworkImage(
                                  user.photoURL!,
                                ),
                              ),
                            ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        user.userName!,
                        style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        user.email!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                style: WidgetStyle().whiteElevatedButtonStyle(),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/icon_pan.svg',
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'редактировать',
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    builder: (BuildContext context) {
                                      return ModalSetting();
                                    },
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/icons/icon_stat.svg',
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/icons/icon_settings.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'N',
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                                Text(
                                  ' ${Intl.plural(
                                    10,
                                    locale: 'ru',
                                    other: 'колоды',
                                    one: 'колода',
                                    two: 'колоды',
                                    few: 'колоды',
                                    many: 'колод',
                                  )}',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                MaterialSegmentedControl(
                  children: _children,
                  selectionIndex: currentSelection,
                  borderColor: primaryColor,
                  selectedColor: primaryColor,
                  unselectedColor: Colors.white,
                  borderRadius: 32.0,
                  onSegmentChosen: (int index) {
                    setState(() {
                      currentSelection = index;
                    });
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                if (currentSelection == 0) Friends(),
                if (currentSelection == 1) Sobscribers(),
                if (currentSelection == 2) AboutMe(),
              ],
            );
          });
        },
      );
    });
  }
}
