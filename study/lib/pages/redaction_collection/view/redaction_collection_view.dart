import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/pages/collection/view/collection_page.dart';
import 'package:study/pages/colods/view/colods_page.dart';
import 'package:study/pages/redaction_collection/bloc/redaction_collection_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/container_coloda.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/pick_image.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class RedactionCollectionView extends StatefulWidget {
  final Collection collection;

  final Function updateColoda;
  const RedactionCollectionView({
    Key? key,
    required this.collection,
    required this.updateColoda,
  }) : super(key: key);

  @override
  State<RedactionCollectionView> createState() => _RedactionCollectionView();
}

class _RedactionCollectionView extends State<RedactionCollectionView> {
  late FormGroup form;
  Uint8List? image;
  late String imageURL;
  late bool addTags;
  late List<String> tags;
  late bool addDescriptin;
  final int maxTags = 10;
  late String userName;
  late List<Coloda> colods;

  @override
  void initState() {
    colods = [];

    addTags = widget.collection.addTags =
        widget.collection.tags!.isEmpty ? false : true;
    tags = widget.collection.tags!;
    addDescriptin = widget.collection.description == '' ? false : true;
    imageURL = widget.collection.imageURL!;
    context.read<AccountBloc>().state.maybeWhen(
          orElse: () {},
          loaded: (user) {
            userName = user.userName!;
          },
        );
    form = FormGroup(
      {
        'name': FormControl<String>(
          value: widget.collection.name,
          validators: [
            Validators.required,
            Validators.maxLength(64),
          ],
        ),
        'description': FormControl<String>(
          value: widget.collection.description,
          validators: [],
        ),
        'tag': FormControl<String>(
          validators: [
            Validators.maxLength(20),
          ],
        ),
      },
    );

    super.initState();
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
    return BlocListener<RedactionCollectionBloc, RedactionCollectionState>(
        listener: (BuildContext context, RedactionCollectionState state) {
      state.maybeWhen(
        loaded: (colodsa) {
          colods = colodsa!;
        },
        success: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CollectionPage(
                collectioId: widget.collection.collectionId!,
              ),
            ),
          );
        },
        error: (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomScaffoldMessages().show(title: error!));
        },
        initial: (shoudStart) {
          if (shoudStart) {
            if (form.control('name').valid && colods.isNotEmpty) {
              List<String> allColods = [];
              for (var element in colods) {
                allColods.add(element.colodId!);
              }

              Collection collection = Collection(
                imageURL: null,
                name: form
                    .control(
                      'name',
                    )
                    .value,
                description: form
                    .control(
                      'description',
                    )
                    .value,
                uid: widget.collection.uid,
                colodsId: allColods,
                dateCreate: widget.collection.dateCreate,
                tags: tags,
                collectionId: widget.collection.collectionId,
              );
              widget.updateColoda(
                collection,
                image,
              );
            } else {
              if (!form.control('name').valid && colods.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                    CustomScaffoldMessages().show(
                        title:
                            'Добавьте название коллекции и хотя-бы одну колоду'));
              } else {
                if (!form.control('name').valid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      CustomScaffoldMessages()
                          .show(title: 'Добавьте название коллекции'));
                }
                if (colods.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      CustomScaffoldMessages()
                          .show(title: 'Добавьте хотя-бы одну колоду'));
                }
              }
            }
          }
        },
        orElse: () {},
      );
    }, child: BlocBuilder<RedactionCollectionBloc, RedactionCollectionState>(
      builder: (BuildContext context, RedactionCollectionState state) {
        return state.maybeWhen(
          loadingError: (error) {
            return const Center(
              child: Text('Произошла ошибка'),
            );
          },
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: primaryColor,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ColodsPage(
                                  onSelect: (
                                    Coloda coloda1,
                                  ) {
                                    int num = 0;
                                    for (var element in colods) {
                                      if (element.name == coloda1.name) {
                                        num++;
                                      }
                                    }
                                    if (num == 0) {
                                      if (colods
                                          .where((element) =>
                                              element.name == coloda1.name)
                                          .isEmpty) {
                                        setState(() {
                                          colods.add(coloda1);
                                        });
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          CustomScaffoldMessages().show(
                                              title:
                                                  'Вы уже добавили данную колоду'));
                                    }
                                  },
                                ),
                              ),
                            );
                          },
                          icon: SvgPicture.asset(
                            'assets/icons/icon_plus.svg',
                            height: 28,
                            width: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  for (int i = 0; i < colods.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ContainerColoda(
                        onDelete: (Coloda coloda) {
                          setState(() {
                            colods.remove(coloda);
                          });
                        },
                        cantTab: true,
                        coloda: colods[colods.length - i - 1],
                        showTegs: false,
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
