import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/models/coloda/card.dart' as model;
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/pages/add_coloda.dart/widgets/card_in_coloda.dart';
import 'package:study/pages/colod/view/colod_page.dart';
import 'package:study/pages/redaction/bloc/redaction_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/pick_image.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class RedactionView extends StatefulWidget {
  final DetailColoda coloda;
  final Function({
    String? name,
    String? description,
    List<model.Card>? cards,
    String? photoURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    required String uid,
    DateTime? dateNow,
    Uint8List? file,
  }) updateColoda;
  const RedactionView({
    Key? key,
    required this.coloda,
    required this.updateColoda,
  }) : super(key: key);

  @override
  State<RedactionView> createState() => _RedactionViewState();
}

class _RedactionViewState extends State<RedactionView> {
  final List<model.Card> cards = [];

  late FormGroup form;
  Uint8List? image;
  late String imageURL;
  late bool addTags;
  late List<String> tags;
  late bool addDescriptin;
  final int maxTags = 10;
  late int namberOfCards;
  late List<FormGroup> cardForm;

  @override
  void initState() {
    namberOfCards = widget.coloda.cards!.length;
    addTags = widget.coloda.tags!.isEmpty ? false : true;
    tags = widget.coloda.tags!;
    addDescriptin = widget.coloda.description == '' ? false : true;
    cardForm = [];
    imageURL = widget.coloda.imageURL!;

    form = FormGroup(
      {
        'name': FormControl<String>(
          value: widget.coloda.name,
          validators: [
            Validators.required,
            Validators.maxLength(64),
          ],
        ),
        'description': FormControl<String>(
          value: widget.coloda.description,
          validators: [],
        ),
        'tag': FormControl<String>(
          validators: [
            Validators.maxLength(20),
          ],
        ),
      },
    );
    firstInitCard();

    super.initState();
  }

  void firstInitCard() {
    widget.coloda.cards!.forEach((element) {
      cardForm.add(FormGroup(
        {
          'term': FormControl<String>(
            value: element.term,
            validators: [
              Validators.required,
            ],
          ),
          'definition': FormControl<String>(
            value: element.definition,
            validators: [
              Validators.required,
            ],
          ),
        },
      ));
    });
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
    }
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
      imageURL = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RedactionBloc, RedactionState>(
        listener: (BuildContext context, RedactionState state) {
      state.maybeWhen(
        success: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ColodPage(
                colodId: widget.coloda.colodId!,
              ),
            ),
          );
        },
        error: (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomScaffoldMessages().show(title: error!));
        },
        normal: (
          shodStart,
        ) {
          if (shodStart) {
            cards.clear();
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
              widget.updateColoda(
                file: imageURL == '' ? image : null,
                name: form.control('name').value,
                description: form.control('description').value,
                cards: cards,
                showEvery: widget.coloda.showEvery,
                tags: tags,
                takeMyHaveAuthour: widget.coloda.takeMyHaveAuthour,
                dateNow: widget.coloda.dateCreate,
                photoURL: imageURL == '' ? '' : imageURL,
                uid: widget.coloda.colodId!,
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
    }, child: BlocBuilder<RedactionBloc, RedactionState>(
      builder: (BuildContext context, RedactionState state) {
        return state.maybeWhen(
          orElse: () {
            return ReactiveForm(
              formGroup: form,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      imageURL == ''
                          ? image == null
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
                                )
                          : Column(
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image(
                                    image: NetworkImage(imageURL),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    {
                                      setState(() {
                                        selectImage();
                                      });
                                    }
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
                                    backgroundColor:
                                        (form.control('tag').valid &&
                                                form.control('tag').dirty &&
                                                form.control('tag').value != '')
                                            ? primaryColor
                                            : Colors.grey,
                                    child: IconButton(
                                      onPressed: (form.control('tag').valid &&
                                              form.control('tag').dirty &&
                                              form.control('tag').value != '')
                                          ? () {
                                              form.control('tag').valid == true;
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
                                                form.control('tag').value = '';
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
                                          tags.removeWhere((item) => item == e);
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
                  for (int i = 0; i < namberOfCards; i++)
                    CardInColoda(
                      indexOfCard: i,
                      form: cardForm[i],
                      deleteCard: () {},
                    ),
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
          },
          loading: () {
            return const LoadingCustom();
          },
        );
      },
    ));
  }
}
