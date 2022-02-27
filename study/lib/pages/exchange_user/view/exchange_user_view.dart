import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/exchange_user/bloc/exchange_user_bloc.dart';
import 'package:study/pages/exchange_user/widgets/users_about.dart';
import 'package:study/pages/exchange_user/widgets/users_colods.dart';
import 'package:study/pages/exchange_user/widgets/users_folow.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/get_image.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class ExchangeUserView extends StatefulWidget {
  final Function onFollow;

  const ExchangeUserView({
    Key? key,
    required this.onFollow,
  }) : super(key: key);

  @override
  State<ExchangeUserView> createState() => _ExchangeUserViewState();
}

class _ExchangeUserViewState extends State<ExchangeUserView> {
  int currentSelection = 0;
  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: Text(
        'Колоды',
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
    return BlocBuilder<ExchangeUserBloc, ExchangeUserState>(
      builder: (BuildContext context, ExchangeUserState state) {
        return BlocBuilder<AccountBloc, AccountState>(
          builder: (BuildContext context, AccountState accountState) {
            return accountState.maybeWhen(orElse: () {
              return const Center(
                child: Text('Произошла ошибка'),
              );
            }, loaded: (appUSer) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox();
                },
                loading: () {
                  return const LoadingCustom();
                },
                error: (error) {
                  return const Center(
                    child: Text('Произошла ошибка'),
                  );
                },
                loaded: (asers, user, colods, idFollowingProccess,
                    isFollowSuccess) {
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
                              height: 26,
                            ),
                            idFollowingProccess
                                ? const SizedBox(
                                    height: 60,
                                    child: Center(
                                        child: CircularProgressIndicator(
                                      color: Colors.white,
                                    )))
                                : Padding(
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
                                                .whiteElevatedButtonStyle(),
                                            onPressed: () {
                                              !user.subscribers!
                                                      .contains(appUSer.uid)
                                                  ? widget.onFollow(
                                                      true,
                                                      user.uid,
                                                      user.subscribers,
                                                      appUSer.subscrip,
                                                    )
                                                  : widget.onFollow(
                                                      false,
                                                      user.uid,
                                                      user.subscribers,
                                                      appUSer.subscrip,
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
                                                user.subscribers!
                                                        .contains(appUSer.uid)
                                                    ? const Text(
                                                        'отписаться',
                                                        style: TextStyle(
                                                          color: primaryColor,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 18,
                                                        ),
                                                      )
                                                    : const Text(
                                                        'подписаться',
                                                        style: TextStyle(
                                                          color: primaryColor,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        user.writeCanAll!
                                            ? CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                    'assets/icons/icon_message.svg',
                                                    color: primaryColor,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox(
                                                width: 60,
                                              ),
                                        user.statCanSeeEvery!
                                            ? CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                    'assets/icons/icon_stat.svg',
                                                  ),
                                                ),
                                              )
                                            : const SizedBox(
                                                width: 60,
                                              ),
                                      ],
                                    ),
                                  ),
                            const SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
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
                      if (currentSelection == 0)
                        UsersColods(
                          colods: colods,
                        ),
                      if (currentSelection == 1)
                        UsersFolow(
                          users: asers,
                        ),
                      if (currentSelection == 2)
                        UsersAbout(
                          user: user,
                        )
                    ],
                  );
                },
              );
            });
          },
        );
      },
    );
  }
}
