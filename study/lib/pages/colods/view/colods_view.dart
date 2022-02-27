import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/pages/colods/bloc/colods_bloc.dart';
import 'package:study/pages/colods/widgets/select_search_type_dialog.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/date.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/container_coloda.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class ColodsView extends StatefulWidget {
  final Function? onSelect;

  final Function onSearch;
  final Function onClose;
  const ColodsView({
    required this.onSearch,
    required this.onClose,
    this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  State<ColodsView> createState() => _ColodsViewState();
}

class _ColodsViewState extends State<ColodsView> {
  late String last;
  late bool isNameSearch;
  late int cardsFilter;
  late bool isClose;
  @override
  void initState() {
    cardsFilter = 0;
    isClose = false;
    last = '';
    isNameSearch = true;
    form.control('search').valueChanges.listen((value) {
      if (!isClose) {
        if (value == '') {
          widget.onSearch(value, false);
        } else {
          widget.onSearch(value, !isNameSearch);
        }
      } else {
        widget.onClose();
      }
    });
    super.initState();
  }

  bool shodShowForCardsFilter(
      {required int cardsLen, required int cardsFilter}) {
    bool isShow = false;

    if (cardsFilter == 0) {
      isShow = true;
    }
    if ((cardsFilter == 1) && (cardsLen < 10)) {
      isShow = true;
    }
    if ((cardsFilter == 2) && (cardsLen >= 10) && (cardsLen < 50)) {
      isShow = true;
    }

    if ((cardsFilter == 3) && (cardsLen >= 50) && (cardsLen < 100)) {
      isShow = true;
    }

    if ((cardsFilter == 4) && (cardsLen > 100)) {
      isShow = true;
    }

    return isShow;
  }

  final form = FormGroup({
    'search': FormControl<String>(
      validators: [],
    ),
  });
  @override
  Widget build(BuildContext context) {
    return BlocListener<ColodsBloc, ColodsState>(
        listener: (BuildContext context, ColodsState state) {
      state.maybeWhen(
        loaded: (colods, showSearcString, cardsFilter) {
          setState(() {
            cardsFilter = cardsFilter;
          });
          isClose = !showSearcString;
          last = '';
          if (!showSearcString &&
              form.control('search').dirty &&
              form.control('search').value != '') {
            widget.onClose();
            form.control('search').value = '';
          }
        },
        orElse: () {},
      );
    }, child: BlocBuilder<ColodsBloc, ColodsState>(
      builder: (BuildContext context, ColodsState state) {
        return state.maybeWhen(orElse: () {
          return const SizedBox();
        }, loading: () {
          return const LoadingCustom();
        }, error: (error) {
          return Center(child: Text(error!));
        }, loaded: (colods, showSearchString, cardsFilter) {
          return ReactiveForm(
            formGroup: form,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                showSearchString
                    ? Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: ReactiveTextField(
                                formControlName: 'search',
                                decoration: WidgetStyle()
                                    .customForSearchInputDecoration(
                                        labelText: 'поиск',
                                        iconName: 'icon_search'),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SelectSearchTypeDialog(
                                        isNameSearch: isNameSearch,
                                        onChange: (bool value) {
                                          setState(() {
                                            isNameSearch = value;
                                            last = '';
                                          });
                                        },
                                      );
                                    });
                              },
                              icon: SvgPicture.asset(
                                'assets/icons/icon_settings.svg',
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 20,
                ),
                ...colods.map(
                  (e) {
                    if (shodShowForCardsFilter(
                      cardsFilter: cardsFilter,
                      cardsLen: e.cards!,
                    )) {
                      final dif =
                          DateTime.now().difference(e.dateCreate!).inDays;
                      String text = '';
                      bool shodShow = false;
                      if (dif == 0) {
                        text = 'сегодня';
                      }
                      if (((dif <= 7)) && (dif != 0)) {
                        text = 'в течениe недели';
                      }
                      if (((dif <= 31)) && (dif > 7)) {
                        text = 'в течениe месяца';
                      }
                      if (((dif <= 365)) && (dif > 31)) {
                        text =
                            'в ${DateCustom().getMount(e.dateCreate!.month)} ${e.dateCreate!.year} года';
                      }
                      if (dif > 365) {
                        text = 'в ${e.dateCreate!.year} году';
                      }
                      if (last == text) {
                        shodShow = false;
                      } else {
                        shodShow = true;
                      }
                      last = text;
                      return Column(
                        children: [
                          if (shodShow)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                text,
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: ContainerColoda(
                              onSelect: widget.onSelect,
                              coloda: e,
                              showTegs: !isNameSearch,
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ],
            ),
          );
        });
      },
    ));
  }
}
