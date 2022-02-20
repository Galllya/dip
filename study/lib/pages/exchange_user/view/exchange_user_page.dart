import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/exchange_user/bloc/exchange_user_bloc.dart';
import 'package:study/pages/exchange_user/view/exchange_user_view.dart';
import 'package:study/pages/profile/view/profile_page.dart';
import 'package:study/provider/account_provider.dart';
import 'package:study/provider/coloda_provider.dart';

class ExchangeUserPage extends StatefulWidget {
  final String uid;
  final bool fromProfile;
  const ExchangeUserPage({
    Key? key,
    required this.uid,
    this.fromProfile = false,
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
    )..add(ExchangeUserEvent.started(widget.uid));
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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              if (widget.fromProfile) {
                context.read<AccountBloc>().state.maybeWhen(
                    orElse: () {},
                    loaded: (user) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage(
                                    appUser: user,
                                  )));
                    });
              } else {
                Navigator.pop(context);
              }
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: ExchangeUserView(
          onFollow: (
            bool isFollow,
            String anotherUserUID,
            List<String> anotherUserSubscribers,
            List<String> curUserSubscrip,
          ) {
            exchangeUserBloc.add(ExchangeUserEvent.folow(
              isFollow,
              anotherUserUID,
              anotherUserSubscribers,
              curUserSubscrip,
            ));
          },
        ),
      ),
    );
  }
}
