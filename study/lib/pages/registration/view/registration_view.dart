import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/authorization/view/authorization_page.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/pages/registration/bloc/registration_bloc.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/text_style.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/pick_image.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class RegistrationView extends StatefulWidget {
  final Function registerUser;
  const RegistrationView({
    required this.registerUser,
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

ValidatorFunction _mustMatch(String controlName, String matchingControlName) {
  return (AbstractControl<dynamic> control) {
    final form = control as FormGroup;

    final formControl = form.control(controlName);
    final matchingFormControl = form.control(matchingControlName);

    if ((formControl.value != matchingFormControl.value) &&
        (matchingFormControl.dirty)) {
      matchingFormControl.setErrors({'mustMatch': true});

      matchingFormControl.markAsTouched();
    } else {
      matchingFormControl.removeError('mustMatch');
    }

    return null;
  };
}

class _RegistrationViewState extends State<RegistrationView> {
  Uint8List? image;

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  final registrationForm = FormGroup(
    {
      'name': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(4),
          Validators.maxLength(32),
        ],
      ),
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(8),
          Validators.maxLength(32),
        ],
      ),
      'passwordConfirmation': FormControl<String>(),
    },
    validators: [
      _mustMatch('password', 'passwordConfirmation'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
        listener: (BuildContext context, RegistrationState state) {
      state.maybeWhen(
        success: () {
          context.read<AccountBloc>().add(const AccountEvent.load());
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
        orElse: () {},
      );
    }, child: BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (BuildContext context, RegistrationState state) {
        return ReactiveForm(
          formGroup: registrationForm,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Регистрация',
                        style: bigTextStyle.copyWith(color: primaryColor),
                      ),
                      Stack(
                        children: [
                          image != null
                              ? CircleAvatar(
                                  radius: 64,
                                  backgroundImage: MemoryImage(image!),
                                )
                              : const CircleAvatar(
                                  radius: 64,
                                  backgroundImage: AssetImage(
                                      'assets/picturies/pic_avatar.png')),
                          Positioned(
                            bottom: -10,
                            left: 92,
                            child: IconButton(
                              onPressed: () {
                                selectImage();
                              },
                              icon: const Icon(
                                Icons.add_a_photo,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ReactiveTextField(
                    decoration: WidgetStyle().customInputDecoration(
                        labelText: 'имя', iconName: 'icon_profile'),
                    formControlName: 'name',
                    onSubmitted: () => registrationForm.focus('email'),
                    validationMessages: (control) => {
                      'required': 'Пожалуйста, заполните поле',
                      'minLength': 'Имя должено содержать минимум 4 символа',
                      'maxLength': 'Имя должено содержать максимум 32 символа',
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReactiveTextField(
                    decoration: WidgetStyle().customInputDecoration(
                        labelText: 'email', iconName: 'icon_mail'),
                    formControlName: 'email',
                    onSubmitted: () => registrationForm.focus('password'),
                    validationMessages: (control) => {
                      'required': 'Пожалуйста, введите email',
                      'email': 'Введён не корректный email'
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReactiveTextField(
                    decoration: WidgetStyle().customInputDecoration(
                        labelText: 'пароль', iconName: 'icon_password'),
                    formControlName: 'password',
                    onSubmitted: () =>
                        registrationForm.focus('passwordConfirmation'),
                    obscureText: true,
                    validationMessages: (control) => {
                      'required': 'Пожалуйста, заполните поле',
                      'minLength': 'Пароль должен содержать минимум 8 символов',
                      'maxLength':
                          'Пароль должен содержать максимум 32 символа',
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReactiveTextField(
                    decoration: WidgetStyle().customInputDecoration(
                        labelText: 'повторите пароль',
                        iconName: 'icon_password'),
                    formControlName: 'passwordConfirmation',
                    obscureText: true,
                    validationMessages: (control) => {
                      'mustMatch': 'Пароли не совпадают',
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: state.maybeWhen(
                        orElse: () {
                          return ElevatedButton(
                            onPressed: () {
                              if (registrationForm.valid) {
                                widget.registerUser(
                                  registrationForm,
                                  image,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    CustomScaffoldMessages().show(
                                        title:
                                            'Проверьте правильность заполнения полей'));
                              }
                            },
                            child: const Text(
                              'Зарегистрироваться',
                              style: buttonTextStyle,
                            ),
                            style: WidgetStyle().elevatedButtonStyle(),
                          );
                        },
                        loading: () {
                          return ElevatedButton(
                            onPressed: () {},
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                            style: WidgetStyle().elevatedButtonStyle(),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Уже есть аккаунт?',
                        style: TextStyle(
                          color: Color(0xFF798777),
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFBDD2B6).withOpacity(0.3))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AuthorizationPage()));
                        },
                        child: const Text(
                          'Войти',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF798777),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
