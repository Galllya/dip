import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/shop/bloc/shop_bloc.dart';
import 'package:study/pages/shop/view/shop_view.dart';
import 'package:study/provider/account_provider.dart';

class ShopPage extends StatefulWidget {
  final int points;
  final List<bool> buied;
  const ShopPage({
    Key? key,
    required this.points,
    required this.buied,
  }) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late ShopBloc shopBloc;

  @override
  void initState() {
    super.initState();

    shopBloc = ShopBloc(userProvider: context.read<UserProvider>())
      ..add(ShopEvent.started(
        points: widget.points,
        buied: widget.buied,
      ));
  }

  @override
  void dispose() {
    shopBloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopBloc>.value(
        value: shopBloc,
        child: BlocBuilder<ShopBloc, ShopState>(
            builder: (BuildContext context, ShopState state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Магазин'),
              leading: IconButton(
                onPressed: () {
                  shopBloc.add(const ShopEvent.back());
                  context.read<AccountBloc>().add(const AccountEvent.load());

                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              actions: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/icon_star.svg',
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      state.maybeWhen(orElse: () {
                        return '';
                      }, load: (points, buied) {
                        return points.toString();
                      }),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            body: ShopView(
              buy: (int minusPoints, int index) {
                shopBloc.add(ShopEvent.buy(
                  minusPoints: minusPoints,
                  index: index,
                ));
              },
            ),
          );
        }));
  }
}
