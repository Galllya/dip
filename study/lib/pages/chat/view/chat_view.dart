import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/chat.dart';
import 'package:study/pages/chat/bloc/chat_bloc.dart';
import 'package:study/pages/chat/widgets/chat_container.dart';
import 'package:study/provider/chat_provider.dart';
import 'package:study/ui/sourse/colors.dart';

class ChatView extends StatefulWidget {
  const ChatView({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  Widget widgetCus = ListView.builder(
    itemCount: 0,
    itemBuilder: (context, index) {
      return const SizedBox();
    },
  );
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
        builder: (BuildContext context, AccountState accountState) {
      return BlocBuilder<ChatBloc, ChatState>(
        builder: (BuildContext context, ChatState state) {
          return accountState.maybeWhen(orElse: () {
            return const SizedBox();
          }, loaded: (user) {
            return StreamBuilder(
              stream: context.read<ChatProvider>().readAll(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Text(
                    'Произошла ошибка',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    continue waiting;
                  waiting:
                  case ConnectionState.waiting:
                    return widgetCus;
                  case ConnectionState.active:
                    continue data_ready;
                  data_ready:
                  case ConnectionState.done:
                    widgetCus = snapshot.data!.docs.isEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                  child: Text(
                                'У вас пока нет диалогов',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              Image.asset(
                                'assets/picturies/pic_shop_27.png',
                                height: 200,
                                width: 200,
                              ),
                            ],
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              Chat chat =
                                  Chat.fromSnap(snapshot.data!.docs[index]);
                              int indexNow = chat.users!.indexOf(user.uid!);
                              int indexUid;
                              indexNow == 0 ? indexUid = 1 : indexUid = 0;
                              String name = '';
                              String image = '';
                              if (indexNow == 1) {
                                name = chat.user1![0];
                                image = chat.user1![1];
                              } else {
                                name = chat.user2![0];
                                image = chat.user2![1];
                              }

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: ChatContainer(
                                  image: image,
                                  name: name,
                                  uid: chat.users![indexUid],
                                  text: chat.text!,
                                  time: chat.time!,
                                ),
                              );
                            },
                          );

                    return Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: widgetCus);
                }
              },
            );
          });
        },
      );
    });
  }
}
