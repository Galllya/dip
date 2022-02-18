import 'dart:math';

import 'package:flutter/material.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/widgets/container_all_coloda.dart';
import 'package:study/ui/widgets/container_coloda_in_user.dart';

class UsersColods extends StatelessWidget {
  final List<ColodaAll> colods;
  const UsersColods({
    Key? key,
    required this.colods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int allLen = colods.length;
    int noShowLen =
        colods.where((element) => element.takeMyHaveAuthour == false).length;
    return ((colods.isEmpty) || allLen == noShowLen)
        ? Center(
            child: Text(
              'У пользователя нет колод',
              style: getBoldTextStyle(),
            ),
          )
        : ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ...colods.map(
                (e) => e.takeMyHaveAuthour!
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ContainerColodaInUser(coloda: e))
                    : const SizedBox(),
              ),
            ],
          );
  }
}
