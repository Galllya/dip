import 'package:flutter/material.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/ui/widgets/container_coloda.dart';

class Colods extends StatelessWidget {
  final List<Coloda> colods;
  final String collectionId;
  const Colods({
    Key? key,
    required this.colods,
    required this.collectionId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        ...colods.map((e) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ContainerColoda(
              coloda: e,
              fromCollection: collectionId,
            ))),
      ],
    );
  }
}
