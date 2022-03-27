import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/pages/add_collection/bloc/add_collection_bloc.dart';
import 'package:study/pages/colods/view/colods_page.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/container_coloda.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/pick_image.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class AddCollectionView extends StatefulWidget {
  final Function onTab;
  const AddCollectionView({
    Key? key,
    required this.onTab,
  }) : super(key: key);

  @override
  State<AddCollectionView> createState() => _AddCollectionViewState();
}

class _AddCollectionViewState extends State<AddCollectionView> {
  Uint8List? image;
  late bool addDescriptin;
  late bool addTags;
  late List<String> tags;
  final int maxTags = 10;
  List<Coloda> colods = [];

  @override
  void initState() {
    addDescriptin = false;
    addTags = false;
    tags = [];
    super.initState();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
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

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCollectionBloc, AddCollectionState>(
        listener: (BuildContext context, AddCollectionState state) {
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
        normal: (shodStart) {
          if (shodStart) {
            List<String> allColods = [];
            for (var element in colods) {
              allColods.add(element.colodId!);
            }

            if (form.control('name').valid && colods.isNotEmpty) {
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
                uid: null,
                colodsId: allColods,
                dateCreate: null,
                tags: tags,
                collectionId: null,
              );

              widget.onTab(image, collection);
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
    }, child: BlocBuilder<AddCollectionBloc, AddCollectionState>(
      builder: (BuildContext context, AddCollectionState state) {
        return state.maybeWhen(loading: () {
          return const LoadingCustom();
        }, orElse: () {
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
                            labelText: 'Название коллекции'),
                        validationMessages: (control) => {
                          'required': 'Пожалуйста, введите название коллекции',
                          'maxLength': 'Название должно быть меньше 64 символов'
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
                                  backgroundColor: (form.control('tag').valid &&
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
                                                      CustomScaffoldMessages().show(
                                                          title:
                                                              'Нельзя добавлять больше $maxTags тегов'));
                                            } else {
                                              setState(() {
                                                tags.add(
                                                    form.control('tag').value);
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
                                        borderRadius: BorderRadius.circular(10),
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
        });
      },
    ));
  }
}
