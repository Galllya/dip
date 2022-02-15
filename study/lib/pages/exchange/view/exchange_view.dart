import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/pages/exchange/bloc/exchange_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/container_all_coloda.dart';
import 'package:study/ui/widgets/container_coloda.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class ExchangeView extends StatefulWidget {
  final Function onSearch;
  const ExchangeView({
    Key? key,
    required this.onSearch,
  }) : super(key: key);

  @override
  State<ExchangeView> createState() => _ExchangeViewState();
}

class _ExchangeViewState extends State<ExchangeView> {
  final form = FormGroup({
    'search': FormControl<String>(
      validators: [],
    ),
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeBloc, ExchangeState>(
      builder: (BuildContext context, ExchangeState state) {
        return ReactiveForm(
          formGroup: form,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ReactiveTextField(
                        formControlName: 'search',
                        decoration: WidgetStyle().largeInputDecoration(
                          labelText: 'поиск',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (form.control('search').value != null) {
                          widget.onSearch(form.control('search').value);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              CustomScaffoldMessages()
                                  .show(title: 'Введите текст для поиска'));
                        }
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/icon_search.svg',
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              state.maybeWhen(
                orElse: () {
                  return const Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Center(
                      child: Text(
                        'Введите текс для поиска подходящей колоды',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
                loading: () {
                  return const LoadingCustom();
                },
                error: (error) {
                  return const Center(
                    child: Text('Произошла ошибка'),
                  );
                },
                loaded: (colods) {
                  return colods.isNotEmpty
                      ? ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ...colods.map(
                              (e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: ContainerAllColoda(coloda: e)),
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.only(top: 200),
                          child: Center(
                            child: Text(
                              'К сожелению, нечего не найденно. Попробуйте перефрмулировать свой запрос. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
