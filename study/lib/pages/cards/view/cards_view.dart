import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/pages/cards/bloc/cards_bloc.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/cards/widgets/modal_cards_setting.dart';
import 'package:study/pages/profile/widgets/about_me.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/splash_clipper.dart';

class CardsView extends StatefulWidget {
  final List<model.Card> cards;
  final Intro intro;

  const CardsView({
    Key? key,
    required this.cards,
    required this.intro,
  }) : super(key: key);

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  double _currentSliderValue = 0;
  bool mainValContr = true;
  bool locValContr = true;

  final PageController controller = PageController();

  void nextPage() {
    if (controller.page!.toInt() + 1 == widget.cards.length) {
      controller.animateToPage(0,
          duration: const Duration(milliseconds: 1), curve: Curves.ease);
      setState(() {
        _currentSliderValue = 0;
      });
    } else {
      controller.animateToPage(controller.page!.toInt() + 1,
          duration: const Duration(milliseconds: 1), curve: Curves.ease);
      setState(() {
        _currentSliderValue++;
      });
    }
    setState(() {
      locValContr = mainValContr;
    });
  }

  void lastPage() {
    if (controller.page!.toInt() == 0) {
      controller.animateToPage(widget.cards.length - 1,
          duration: const Duration(milliseconds: 1), curve: Curves.ease);
      setState(() {
        _currentSliderValue = (widget.cards.length - 1).toDouble();
      });
    } else {
      controller.animateToPage(controller.page!.toInt() - 1,
          duration: const Duration(milliseconds: 1), curve: Curves.ease);
      setState(() {
        _currentSliderValue--;
      });
    }
    setState(() {
      locValContr = mainValContr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CardsBloc, CardsState>(
        listener: (BuildContext context, CardsState state) {
      state.maybeWhen(
          orElse: () {},
          initial: (show) {
            if (show) {
              showModalBottomSheet<void>(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                builder: (BuildContext context) {
                  return ModalCardsSetting(
                    mainValContr: mainValContr,
                    onChange: (
                      bool mainValContr1,
                    ) {
                      setState(() {
                        mainValContr = mainValContr1;
                        locValContr = mainValContr;
                      });
                    },
                  );
                },
              );
            }
          });
    }, child: BlocBuilder<CardsBloc, CardsState>(
      builder: (BuildContext context, CardsState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Slider(
                  key: widget.intro.keys[3],
                  value: _currentSliderValue,
                  max: widget.cards.length.toDouble() - 1,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {},
                  activeColor: primaryColor,
                  thumbColor: primaryColor,
                  inactiveColor: softColor,
                ),
              ),
              SizedBox(
                height: 400,
                width: 300,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                    for (int i = 0; i < widget.cards.length; i++)
                      SplashClipper(
                        key: widget.intro.keys[1],
                        decoration: BoxDecoration(
                            color: softColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: primaryColor,
                              width: 1,
                            )),
                        child: Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                locValContr = !locValContr;
                              });
                            },
                            child: Center(
                              child: Text(
                                mainValContr
                                    ? locValContr
                                        ? widget.cards
                                            .elementAt(i)
                                            .term
                                            .toString()
                                        : widget.cards
                                            .elementAt(i)
                                            .definition
                                            .toString()
                                    : locValContr
                                        ? widget.cards
                                            .elementAt(i)
                                            .term
                                            .toString()
                                        : widget.cards
                                            .elementAt(i)
                                            .definition
                                            .toString(),
                                style: getBoldTextStyle(),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  key: widget.intro.keys[2],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        lastPage();
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child:
                            SvgPicture.asset('assets/icons/icon_ar_left.svg'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        nextPage();
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child:
                            SvgPicture.asset('assets/icons/icon_ar_right.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
