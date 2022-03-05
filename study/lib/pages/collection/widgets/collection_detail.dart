import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:study/models/collection.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/tags_wrap.dart';

class CollectionDetail extends StatelessWidget {
  final Collection collection;
  const CollectionDetail({
    Key? key,
    required this.collection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            collection.description == ''
                ? 'У коллекции пока нет описания'
                : collection.description!,
            style: const TextStyle(
              fontSize: 16,
              color: primaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                'Создана',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                DateFormat('dd.MM.yyyy').format(collection.dateCreate!),
                style: const TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: TagsWrap(
              tags: collection.tags!,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
