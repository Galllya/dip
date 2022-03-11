import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:study/pages/chat_detail/view/chat_detail_view.dart';
import 'package:study/provider/chat_provider.dart';
import 'package:study/ui/widgets/get_image.dart';

class ChatDetailPage extends StatefulWidget {
  final String name;
  final String uid;
  final String imageId;
  const ChatDetailPage({
    Key? key,
    required this.name,
    required this.uid,
    required this.imageId,
  }) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  late ChatDetailBloc chatDetailBloc;

  @override
  void initState() {
    super.initState();

    chatDetailBloc = ChatDetailBloc(chatProvider: context.read<ChatProvider>());
  }

  @override
  void dispose() {
    chatDetailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatDetailBloc>.value(
        value: chatDetailBloc,
        child: BlocBuilder<AccountBloc, AccountState>(
            builder: (BuildContext context, AccountState state) {
          return Scaffold(
            appBar: AppBar(
              title: Row(children: [
                GetImage(
                  image: widget.imageId,
                  radius: 24,
                ),
                const SizedBox(width: 10),
                Text(widget.name),
              ]),
            ),
            body: ChatDetailView(
              uid: widget.uid,
              onWrite: (
                String text,
              ) {
                state.maybeWhen(
                  orElse: () {},
                  loaded: (user) {
                    chatDetailBloc.add(ChatDetailEvent.writeMessage(
                      text,
                      widget.uid,
                      user.userName!,
                      user.photoURL!,
                      widget.name,
                      widget.imageId,
                    ));
                  },
                );
              },
            ),
          );
        }));
  }
}
