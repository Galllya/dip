import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/pages/shop/bloc/shop_bloc.dart';
import 'package:study/pages/shop/widgets/delete_modal.dart';
import 'package:study/ui/sourse/colors.dart';

class ShopView extends StatefulWidget {
  final Function buy;

  const ShopView({
    Key? key,
    required this.buy,
  }) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (BuildContext context, ShopState state) {
        return state.maybeWhen(orElse: () {
          return const Center(
            child: Text('Произошла ошибка'),
          );
        }, load: (points, buyed) {
          return GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              for (int i = 1; i <= 28; i++)
                if (i != 19)
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: i * 100 <= points! && !buyed![i]
                            ? gentlyPrimaryColor.withOpacity(0.7)
                            : softColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: i * 100 <= points && !buyed![i]
                              ? Colors.green
                              : Colors.transparent,
                        )),
                    child: InkWell(
                      onTap: i * 100 <= points && !buyed![i]
                          ? () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return BuyDialog(
                                      buy: () {
                                        setState(() {
                                          buyed[i] = true;
                                          widget.buy(i * 100, i);
                                        });
                                      },
                                    );
                                  });
                            }
                          : null,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/picturies/pic_shop_$i.png',
                            color: buyed![i] ? null : primaryColor,
                            height: 140,
                            width: 140,
                          ),
                          Text(
                            'Стоимость: ${i * 100}',
                            style: getBoldTextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          );
        });
      },
    );
  }
}
