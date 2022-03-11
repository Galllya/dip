import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/raiting/bloc/raiting_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/container_top_user.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class RaitingView extends StatefulWidget {
  const RaitingView({
    Key? key,
  }) : super(key: key);

  @override
  State<RaitingView> createState() => _RaitingViewState();
}

class _RaitingViewState extends State<RaitingView> {
  int currentSelection = 0;
  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: Text(
        'Баллы',
        style: currentSelection == 0
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      1: Text(
        'Подписчики',
        style: currentSelection == 1
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )
            : const TextStyle(),
      ),
      2: Text(
        'Польза',
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
      return BlocBuilder<RaitingBloc, RaitingState>(
          builder: (BuildContext context, RaitingState state) {
        return accountState.maybeWhen(
          orElse: () {
            return const Center(
              child: Text('Произошла ошибка'),
            );
          },
          loaded: (user) {
            return state.maybeWhen(orElse: () {
              return const SizedBox();
            }, loading: () {
              return const LoadingCustom();
            }, error: (error) {
              return const Center(
                child: Text('Произошла ошибка'),
              );
            }, loaded: (usersPoints, usersSubs, usersHelp) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const SizedBox(
                    height: 20,
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
                    for (int i = 0; i < usersPoints.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ContainerTopUser(
                            uidCur: user.uid!,
                            index: i,
                            uid: usersPoints[i].uid!,
                            photoURL: usersPoints[i].photoURL!,
                            userName: usersPoints[i].userName!,
                            points: usersPoints[i].points!,
                            writeCanAll: usersPoints[i].writeCanAll!,
                            statCanSeeEvery: usersPoints[i].statCanSeeEvery!),
                      ),
                  if (currentSelection == 1)
                    for (int i = 0; i < usersSubs.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ContainerTopUser(
                            sub: usersSubs[i].subscribers!.length,
                            help: usersSubs[i].anotherUserTake,
                            uidCur: user.uid!,
                            index: i,
                            uid: usersSubs[i].uid!,
                            photoURL: usersSubs[i].photoURL!,
                            userName: usersSubs[i].userName!,
                            points: usersSubs[i].points!,
                            writeCanAll: usersSubs[i].writeCanAll!,
                            statCanSeeEvery: usersSubs[i].statCanSeeEvery!),
                      ),
                  if (currentSelection == 2)
                    for (int i = 0; i < usersHelp.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ContainerTopUser(
                            help: usersHelp[i].anotherUserTake,
                            uidCur: user.uid!,
                            index: i,
                            uid: usersHelp[i].uid!,
                            photoURL: usersHelp[i].photoURL!,
                            userName: usersHelp[i].userName!,
                            points: usersHelp[i].points!,
                            writeCanAll: usersHelp[i].writeCanAll!,
                            statCanSeeEvery: usersHelp[i].statCanSeeEvery!),
                      ),
                ],
              );
            });
          },
        );
      });
    });
  }
}
