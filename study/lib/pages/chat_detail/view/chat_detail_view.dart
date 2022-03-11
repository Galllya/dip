import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/models/message.dart';
import 'package:study/pages/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:study/pages/chat_detail/widgets/message_container.dart';
import 'package:study/provider/chat_provider.dart';
import 'package:study/ui/sourse/widget_style.dart';

class ChatDetailView extends StatefulWidget {
  final Function onWrite;
  final String uid;
  const ChatDetailView({
    Key? key,
    required this.onWrite,
    required this.uid,
  }) : super(key: key);

  @override
  State<ChatDetailView> createState() => _ChatDetailViewState();
}

class _ChatDetailViewState extends State<ChatDetailView> {
  final form = FormGroup(
    {
      'message': FormControl<String>(),
    },
  );
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();
  }

  Widget widgetCus = ListView.builder(
    itemCount: 0,
    itemBuilder: (context, index) {
      return const SizedBox();
    },
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      builder: (BuildContext context, ChatDetailState state) {
        return ReactiveForm(
          formGroup: form,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: StreamBuilder(
                    stream: context
                        .read<ChatProvider>()
                        .readMessages(uid: widget.uid),
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
                          widgetCus = ListView.builder(
                            reverse: true,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              Message message =
                                  Message.fromSnap(snapshot.data!.docs[index]);

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: MessageContainer(
                                    isCurUser: widget.uid != message.author,
                                    test: message.text!,
                                    time: message.time!),
                              );
                            },
                          );
                          return widgetCus;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: ReactiveTextField(
                          formControlName: 'message',
                          decoration: WidgetStyle()
                              .customForSendInputDecoration(
                                  labelText: 'Введите сообщение'),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (form.control('message').value != null) {
                            widget.onWrite(form.control('message').value);
                            form.control('message').value = null;
                          }
                        },
                        icon: SvgPicture.asset(
                          'assets/icons/icon_send.svg',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
