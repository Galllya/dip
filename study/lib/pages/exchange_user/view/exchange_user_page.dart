import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/exchange_user/bloc/exchange_user_bloc.dart';
import 'package:study/pages/exchange_user/view/exchange_user_view.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/coloda_provider.dart';

class ExchangeUserPage extends StatefulWidget {
  final AppUser user;
  const ExchangeUserPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<ExchangeUserPage> createState() => _ExchangeUserPageState();
}

class _ExchangeUserPageState extends State<ExchangeUserPage> {
  late ExchangeUserBloc exchangeUserBloc;

  @override
  void initState() {
    super.initState();

    exchangeUserBloc = ExchangeUserBloc(
      colodaProvider: context.read<ColodaProvider>(),
      userProvider: context.read<UserProvider>(),
    )..add(ExchangeUserEvent.started(widget.user.uid!));
  }

  @override
  void dispose() {
    exchangeUserBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExchangeUserBloc>.value(
      value: exchangeUserBloc,
      child: Scaffold(
        appBar: AppBar(),
        body: ExchangeUserView(
          onFollow: (
            String anotherUserUID,
            List<String> anotherUserSubscribers,
            List<String> curUserSubscrip,
          ) {
            exchangeUserBloc.add(ExchangeUserEvent.folow(
              anotherUserUID,
              anotherUserSubscribers,
              curUserSubscrip,
            ));
          },
          user: widget.user,
        ),
      ),
    );
  }
}
