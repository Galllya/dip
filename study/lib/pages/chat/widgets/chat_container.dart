import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:study/pages/chat_detail/view/chat_detail_page.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/widgets/get_image.dart';

class ChatContainer extends StatelessWidget {
  final String uid;
  final String name;
  final String image;
  final String text;
  final DateTime time;
  const ChatContainer({
    Key? key,
    required this.image,
    required this.name,
    required this.uid,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatDetailPage(
                      imageId: image,
                      name: name,
                      uid: uid,
                    )));
      },
      child: Row(
        children: [
          GetImage(
            image: image,
            radius: 30,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: getBoldTextStyle(),
                ),
                Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            DateFormat('kk:mm').format(time),
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
