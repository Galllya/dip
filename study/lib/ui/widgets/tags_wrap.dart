import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';

class TagsWrap extends StatelessWidget {
  final List<String> tags;
  const TagsWrap({
    Key? key,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...tags.map(
          (e) => Padding(
            padding: const EdgeInsets.only(
              right: 4,
              bottom: 4,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  e,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
