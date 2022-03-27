import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/pages/add_coloda.dart/bloc/add_coloda_bloc.dart';
import 'package:study/pages/add_coloda.dart/widgets/card_in_coloda.dart';
import 'package:study/pages/add_coloda.dart/widgets/modal_botton_sheet_custom.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/pick_image.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class AddColodaView extends StatefulWidget {
  final Function putColoda;
  const AddColodaView({
    required this.putColoda,
    Key? key,
  }) : super(key: key);

  @override
  State<AddColodaView> createState() => _AddColodaViewState();
}

class _AddColodaViewState extends State<AddColodaView> {
  late bool addDescriptin;

  late int namberOfCards;
  Uint8List? image;
  final List<model.Card> cards = [];
  late List<FormGroup> cardForm;
  // late FormArray cardArray;
  late bool showEvery;
  late bool takeMyHaveAuthor;
  late bool addTags;
  late List<String> tags;
  final int maxTags = 10;
  late String userName;

  @override
  void initState() {
    // cardArray = FormArray([]);
    showEvery = true;
    takeMyHaveAuthor = true;
    addTags = false;
    addDescriptin = false;
    namberOfCards = 3;
    tags = [];
    cardForm = [];
    addCardFrom();
    context.read<AccountBloc>().state.maybeWhen(
          orElse: () {},
          loaded: (user) {
            userName = user.userName!;
          },
        );

    super.initState();
  }

  void addCardFrom() {
    for (int i = namberOfCards - 3; i < namberOfCards; i++) {
      cardForm.add(FormGroup(
        {
          'term': FormControl<String>(
            validators: [
              Validators.required,
            ],
          ),
          'definition': FormControl<String>(
            validators: [
              Validators.required,
            ],
          ),
        },
      ));
      // cardArray.add(
      //   FormGroup(
      //     {
      //       'term': FormControl<String>(
      //         validators: [
      //           Validators.required,
      //         ],
      //       ),
      //       'definition': FormControl<String>(
      //         validators: [
      //           Validators.required,
      //         ],
      //       ),
      //     },
      //   ),
      // );
    }
  }

  final form = FormGroup(
    {
      'name': FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(64),
        ],
      ),
      'description': FormControl<String>(
        validators: [],
      ),
      'tag': FormControl<String>(
        validators: [
          Validators.maxLength(20),
        ],
      ),
    },
  );

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddColodaBloc, AddColodaState>(
        listener: (BuildContext context, AddColodaState state) {
      state.maybeWhen(
        success: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        error: (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomScaffoldMessages().show(title: error!));
        },
        normal: (shodStart, showModal) {
          if (showModal) {
            showModalBottomSheet<void>(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              builder: (BuildContext context) {
                return ModalBottonSheetCustom(
                  showEvery: showEvery,
                  onChangeShowEvery: (bool value) {
                    setState(
                      () {
                        showEvery = value;
                      },
                    );
                  },
                  takeMyHaveAuthor: takeMyHaveAuthor,
                  onChangetakeMyHaveAuthor: (bool value) {
                    setState(
                      () {
                        takeMyHaveAuthor = value;
                      },
                    );
                  },
                );
              },
            );
          }
          if (shodStart) {
            cards.clear();

            // for (var element in cardArray.controls) {
            //   if (element.valid) {
            //     cards.add(
            //       model.Card(
            //         term: (element as FormGroup).control('term').value,
            //         definition: element.control('definition').value,
            //       ),
            //     );
            //   }
            // }

            for (var element in cardForm) {
              if (element.valid) {
                cards.add(
                  model.Card(
                    term: element.control('term').value,
                    definition: element.control('definition').value,
                  ),
                );
              }
            }

            if (form.control('name').valid && cards.isNotEmpty) {
              widget.putColoda(
                form
                    .control(
                      'name',
                    )
                    .value,
                form
                    .control(
                      'description',
                    )
                    .value,
                cards,
                image,
                showEvery,
                takeMyHaveAuthor,
                tags,
                userName,
              );
            } else {
              if (!form.control('name').valid && cards.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    CustomScaffoldMessages().show(
                        title:
                            'Добавьте название колоды и хотя-бы одну карточку'));
              } else {
                if (!form.control('name').valid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      CustomScaffoldMessages()
                          .show(title: 'Добавьте название колоды'));
                }
                if (cards.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      CustomScaffoldMessages()
                          .show(title: 'Добавьте хотя-бы одну карточку'));
                }
              }
            }
          }
        },
        orElse: () {},
      );
    }, child: BlocBuilder<AccountBloc, AccountState>(
      builder: (BuildContext context, AccountState accountState) {
        return BlocBuilder<AddColodaBloc, AddColodaState>(
          builder: (BuildContext context, AddColodaState state) {
            accountState.maybeWhen(orElse: () {}, loaded: (user) {});

            return state.maybeWhen(orElse: () {
              return ReactiveForm(
                formGroup: form,
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        image == null
                            ? IconButton(
                                iconSize: 60,
                                icon: SvgPicture.asset(
                                  'assets/icons/icon_add_image.svg',
                                ),
                                onPressed: () {
                                  selectImage();
                                },
                              )
                            : Column(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image.memory(
                                      image!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      selectImage();
                                    },
                                    icon: const Icon(
                                      Icons.add_a_photo,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          child: ReactiveTextField(
                            formControlName: 'name',
                            decoration: WidgetStyle().easyCustomInputDecoration(
                                labelText: 'Название колоды'),
                            validationMessages: (control) => {
                              'required': 'Пожалуйста, введите название колоды',
                              'maxLength':
                                  'Название должно быть меньше 64 символов'
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              addDescriptin
                                  ? addDescriptin = false
                                  : addDescriptin = true;
                            });
                            if (!addDescriptin) {
                              form.control('description').value = '';
                            }
                          },
                          child: Text(
                            addDescriptin
                                ? 'удалить описание'
                                : 'добавить описание',
                            style: const TextStyle(
                              color: primaryColor,
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    addDescriptin
                        ? ReactiveTextField(
                            formControlName: 'description',
                            decoration: WidgetStyle().largeInputDecoration(
                              labelText: 'Опишите вашу колоду...',
                            ),
                            maxLines: null,
                          )
                        : const SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              addTags ? addTags = false : addTags = true;
                            });
                            if (!addTags) {
                              form.control('tag').value = '';
                              tags = [];
                            }
                          },
                          child: Text(
                            addTags ? 'удалить теги' : 'добавить теги',
                            style: const TextStyle(
                              color: primaryColor,
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    addTags
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ReactiveTextField(
                                      formControlName: 'tag',
                                      decoration: WidgetStyle()
                                          .easyCustomInputDecoration(
                                              labelText: '#тег'),
                                      validationMessages: (control) => {
                                        'maxLength':
                                            'Тег должно быть меньше 20 символов'
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ReactiveFormConsumer(
                                      builder: (context, form, child) {
                                    return CircleAvatar(
                                      radius: 20,
                                      backgroundColor: (form
                                                  .control('tag')
                                                  .valid &&
                                              form.control('tag').dirty &&
                                              form.control('tag').value != '')
                                          ? primaryColor
                                          : Colors.grey,
                                      child: IconButton(
                                        onPressed: (form.control('tag').valid &&
                                                form.control('tag').dirty &&
                                                form.control('tag').value != '')
                                            ? () {
                                                form.control('tag').valid ==
                                                    true;
                                                if (tags.length >= maxTags) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                          CustomScaffoldMessages()
                                                              .show(
                                                                  title:
                                                                      'Нельзя добавлять больше $maxTags тегов'));
                                                } else {
                                                  setState(() {
                                                    tags.add(form
                                                        .control('tag')
                                                        .value);
                                                  });
                                                  form.control('tag').value =
                                                      '';
                                                }
                                              }
                                            : null,
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  }),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Wrap(
                                children: [
                                  ...tags.map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.only(
                                        right: 4,
                                        bottom: 4,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            tags.removeWhere(
                                                (item) => item == e);
                                          });
                                        },
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              '#$e',
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : const SizedBox(),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: cardForm.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CardInColoda(
                            indexOfCard: index,
                            deleteCard: (int indexFrom, FormGroup takeForm) {
                              List<FormGroup> cardFormNew = [];
                              cardForm.forEach((element) {
                                if (element != takeForm) {
                                  cardFormNew.add(element);
                                }
                              });

                              setState(() {
                                cardForm.clear();
                                Timer(
                                  const Duration(
                                    milliseconds: 10,
                                  ),
                                  () {
                                    setState(() {
                                      cardForm = cardFormNew;
                                    });
                                  },
                                );
                              });

                              namberOfCards--;
                            },
                            form: cardForm.elementAt(index),
                          );
                        }),
                    const SizedBox(
                      height: 12,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: primaryColor,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            namberOfCards += 3;
                            addCardFrom();
                          });
                        },
                        icon: SvgPicture.asset(
                          'assets/icons/icon_bottom_arrow.svg',
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              );
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              );
            });
          },
        );
      },
    ));
  }
}
