import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/models/app_user.dart';
import 'package:study/pages/add_coloda.dart/widgets/modal_botton_sheet_custom.dart';
import 'package:study/pages/profile/view/profile_page.dart';
import 'package:study/pages/profile_redaction.dart/bloc/profile_redaction_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/loading_custom.dart';
import 'package:study/ui/widgets/pick_image.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class ProfileRedactionView extends StatefulWidget {
  final AppUser appUser;
  final Function onUpdate;
  const ProfileRedactionView({
    Key? key,
    required this.appUser,
    required this.onUpdate,
  }) : super(key: key);

  @override
  State<ProfileRedactionView> createState() => _ProfileRedactionViewState();
}

class _ProfileRedactionViewState extends State<ProfileRedactionView> {
  late FormGroup form;
  late DateTime birsday;
  Uint8List? image;
  String imageURL = '';
  late int gender;
  late DateTime selectedDate;

  @override
  void initState() {
    selectedDate = widget.appUser.dateBirth!;
    imageURL = widget.appUser.photoURL!;
    if (widget.appUser.gender == 'Женский') {
      gender = 0;
    } else {
      if (widget.appUser.gender == 'Мужской') {
        gender = 1;
      } else {
        gender = -1;
      }
    }
    birsday = widget.appUser.dateBirth!;
    form = FormGroup(
      {
        'name': FormControl<String>(
          value: widget.appUser.userName,
          validators: [
            Validators.required,
            Validators.maxLength(32),
          ],
        ),
        'description': FormControl<String>(
          value: widget.appUser.description,
        ),
        'work': FormControl<String>(
          value: widget.appUser.work,
        ),
        'uni': FormControl<String>(
          value: widget.appUser.uni,
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

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      locale: const Locale('ru', 'RU'),
      context: context,
      initialDate:
          selectedDate == DateTime(1000, 1, 1) ? DateTime.now() : selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.teal,
              primaryColorDark: Colors.teal,
              accentColor: Colors.teal,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  String getGender() {
    String res = '';
    if (gender == 0) {
      res = 'Женский';
    }
    if (gender == 1) {
      res = 'Мужской';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileRedactionBloc, ProfileRedactionState>(
        listener: (BuildContext context, ProfileRedactionState state) {
      state.maybeWhen(
          orElse: () {},
          success: () {
            context.read<AccountBloc>().add(const AccountEvent.load());

            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage(
                          appUser: widget.appUser,
                        )), (route) {
              return route.isFirst;
            });
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
                CustomScaffoldMessages().show(title: 'Произошла ошибка'));
          },
          normal: (shodStart) {
            if (shodStart) {
              widget.onUpdate(
                AppUser(
                  userName: form.control('name').value,
                  uid: widget.appUser.uid,
                  email: widget.appUser.email,
                  photoURL: widget.appUser.photoURL,
                  subscrip: widget.appUser.subscrip,
                  subscribers: widget.appUser.subscribers,
                  showEvery: widget.appUser.showEvery,
                  writeCanAll: widget.appUser.writeCanAll,
                  statCanSeeEvery: widget.appUser.statCanSeeEvery,
                  points: widget.appUser.points,
                  description: form.control('description').value,
                  gender: getGender(),
                  dateBirth: selectedDate,
                  uni: form.control('uni').value,
                  work: form.control('work').value,
                ),
                image,
              );
            }
          });
    }, child: BlocBuilder<AccountBloc, AccountState>(
            builder: (BuildContext context, AccountState accountState) {
      return BlocBuilder<ProfileRedactionBloc, ProfileRedactionState>(
        builder: (BuildContext context, ProfileRedactionState state) {
          return state.maybeWhen(
            orElse: () {
              return ReactiveForm(
                formGroup: form,
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
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
                                        height: 80,
                                        width: 80,
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
                          width: 20,
                        ),
                        Expanded(
                          child: ReactiveTextField(
                            formControlName: 'name',
                            decoration: WidgetStyle()
                                .easyCustomInputDecoration(labelText: 'имя'),
                            validationMessages: (control) => {
                              'required': 'Пожалуйста, введите название колоды',
                              'maxLength': 'Имя должно быть меньше 32 символов'
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Описание профиля:',
                      style: getStyle(),
                    ),
                    ReactiveTextField(
                      formControlName: 'description',
                      decoration: WidgetStyle()
                          .easyCustomInputDecoration(labelText: ''),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Ваше место учебы (если есть):',
                      style: getStyle(),
                    ),
                    ReactiveTextField(
                      formControlName: 'uni',
                      decoration: WidgetStyle()
                          .easyCustomInputDecoration(labelText: ''),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Ваше место работы (если есть):',
                      style: getStyle(),
                    ),
                    ReactiveTextField(
                      formControlName: 'work',
                      decoration: WidgetStyle()
                          .easyCustomInputDecoration(labelText: ''),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Ваш пол:',
                      style: getStyle(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: gender,
                          onChanged: (int? val) {
                            setState(() {
                              gender = val!;
                            });
                          },
                          activeColor: primaryColor,
                        ),
                        Text(
                          'Женский',
                          style: getStyle(),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Radio(
                          value: 1,
                          groupValue: gender,
                          onChanged: (int? val) {
                            setState(() {
                              gender = val!;
                            });
                          },
                          activeColor: primaryColor,
                        ),
                        Text(
                          'Мужской',
                          style: getStyle(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Дата рождения:',
                      style: getStyle(),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          // minimumSize: Size(50, 30),
                          alignment: Alignment.centerLeft),
                      onPressed: () {
                        selectDate(context);
                      },
                      child: Text(
                        selectedDate == DateTime(1000, 1, 1)
                            ? 'выберите'
                            : DateFormat('dd.MM.yyyy').format(selectedDate),
                        style:
                            const TextStyle(color: primaryColor, fontSize: 16),
                      ),
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
      );
    }));
  }
}
