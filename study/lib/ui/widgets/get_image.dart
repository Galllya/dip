import 'package:flutter/material.dart';

class GetImage extends StatelessWidget {
  final String image;
  final double radius;
  const GetImage({
    Key? key,
    required this.image,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return image != ''
        ? CircleAvatar(
            radius: radius,
            backgroundImage: NetworkImage(image),
          )
        : CircleAvatar(
            radius: radius,
            backgroundImage:
                const AssetImage('assets/picturies/pic_avatar.png'));
  }
}
