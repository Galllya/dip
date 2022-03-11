import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/chat/bloc/chat_bloc.dart';
import 'package:study/pages/chat/view/chat_view.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late ChatBloc chatBloc;

  @override
  void initState() {
    super.initState();

    chatBloc = ChatBloc();
  }

  @override
  void dispose() {
    chatBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>.value(
      value: chatBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Чат'),
        ),
        body: const ChatView(),
      ),
    );
  }
}
