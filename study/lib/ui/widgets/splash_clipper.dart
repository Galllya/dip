import 'package:flutter/material.dart';

const _defaultClipRadius = 10.0;

class SplashClipper extends StatelessWidget {
  final BoxDecoration? decoration;
  final double clipRadius;
  final Widget child;
  const SplashClipper({
    Key? key,
    required this.child,
    this.clipRadius = _defaultClipRadius,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wrapper = ClipRRect(
      borderRadius: BorderRadius.circular(clipRadius),
      child: child,
    );
    if (decoration != null) {
      return DecoratedBox(
        decoration: decoration!,
        child: wrapper,
      );
    }
    return wrapper;
  }
}
