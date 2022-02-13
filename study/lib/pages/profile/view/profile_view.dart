import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/authorization/view/authorization_page.dart';
import 'package:study/pages/profile/bloc/profile_bloc.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/profile/widgets/friends.dart';
import 'package:study/pages/profile/widgets/modal_profile_settion.dart';
import 'package:study/pages/profile/widgets/sobscribers.dart';
import 'package:study/pages/profile_redaction.dart/view/profile_redaction_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class ProfileView extends StatefulWidget {
  final Function onLogOut;
  final Function onUpdate;
  const ProfileView({
    Key? key,
    required this.onLogOut,
    required this.onUpdate,
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
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (BuildContext context, ProfileState state) {
        state.maybeWhen(
          orElse: () {},
          loaded: (isLogOutProcess, isLogOutSuccses, isUpdateProcess,
              isUpdateSucces) {
            if (isLogOutSuccses != null && isLogOutSuccses) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AuthorizationPage(),
                ),
              );
            }
            if (isLogOutSuccses != null && !isLogOutSuccses) {
              ScaffoldMessenger.of(context).showSnackBar(
                  CustomScaffoldMessages().show(title: 'Не получилось выйти'));
            }
            if (isUpdateSucces != null) {
              if (!isUpdateSucces) {
                ScaffoldMessenger.of(context).showSnackBar(
                    CustomScaffoldMessages()
                        .show(title: 'Не получилось обновить'));
              }
            }
          },
        );
      },
      child: BlocBuilder<AccountBloc, AccountState>(
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
              return state.maybeWhen(orElse: () {
                return const SizedBox();
              }, loading: () {
                return const LoadingCustom();
              }, error: (error) {
                return const Center(child: Text('Произошла ошибка'));
              }, loaded: (isLogOutProcess, isLogOutSuccses, isUpdateProcess,
                  isUpdateSucces) {
                return isLogOutProcess
                    ? const LoadingCustom()
                    : ListView(
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
                                        radius: 70,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        child: ElevatedButton(
                                          style: WidgetStyle()
                                              .whiteElevatedButtonStyle()
                                              .copyWith(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        isUpdateProcess
                                                            ? Colors.grey
                                                            : Colors.white),
                                              ),
                                          onPressed: isUpdateProcess
                                              ? null
                                              : () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfileRedactionPage(
                                                        appUser: user,
                                                      ),
                                                    ),
                                                  );
                                                },
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
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icons/icon_stat.svg',
                                          ),
                                        ),
                                      ),
                                      isUpdateProcess
                                          ? const SizedBox(
                                              height: 60,
                                              width: 60,
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 30,
                                              child: IconButton(
                                                onPressed: () {
                                                  showModalBottomSheet<void>(
                                                    context: context,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(20),
                                                        topRight:
                                                            Radius.circular(20),
                                                      ),
                                                    ),
                                                    builder:
                                                        (BuildContext context) {
                                                      return ModalProfileSetting(
                                                        deleteAccount: () {},
                                                        onChange: (
                                                          bool showEvery,
                                                          bool writeCanAll,
                                                          bool statCanSeeEvery,
                                                        ) {
                                                          widget.onUpdate(
                                                            AppUser(
                                                              userName:
                                                                  user.userName,
                                                              uid: user.uid,
                                                              email: user.email,
                                                              photoURL:
                                                                  user.photoURL,
                                                              subscrip:
                                                                  user.subscrip,
                                                              subscribers: user
                                                                  .subscribers,
                                                              showEvery:
                                                                  showEvery,
                                                              writeCanAll:
                                                                  writeCanAll,
                                                              statCanSeeEvery:
                                                                  statCanSeeEvery,
                                                              points:
                                                                  user.points,
                                                              description: user
                                                                  .description,
                                                              gender:
                                                                  user.gender,
                                                              dateBirth: user
                                                                  .dateBirth,
                                                              uni: user.uni,
                                                              work: user.work,
                                                            ),
                                                          );
                                                        },
                                                        logOut: () {
                                                          widget.onLogOut();
                                                        },
                                                        showEvery:
                                                            user.showEvery!,
                                                        statCanSeeEvery: user
                                                            .statCanSeeEvery!,
                                                        writeCanAll:
                                                            user.writeCanAll!,
                                                      );
                                                    },
                                                  );
                                                },
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                          if (currentSelection == 2)
                            AboutMe(
                              user: user,
                            ),
                        ],
                      );
              });
            });
          },
        );
      }),
    );
  }
}
