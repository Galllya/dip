import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/pages/authorization/bloc/authorization_bloc.dart';
import 'package:study/pages/home/view/home_page.dart';
import 'package:study/pages/registration/view/registration_page.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/text_style.dart';
import 'package:study/ui/sourse/widget_style.dart';
import 'package:study/ui/widgets/scaffold_messages.dart';

class AuthorizationView extends StatefulWidget {
  final Function autUser;
  const AuthorizationView({
    required this.autUser,
    Key? key,
  }) : super(key: key);

  @override
  State<AuthorizationView> createState() => _AuthorizationViewState();
}

class _AuthorizationViewState extends State<AuthorizationView> {
  final autForm = FormGroup(
    {
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'password': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthorizationBloc, AuthorizationState>(
      listener: (BuildContext context, AuthorizationState state) {
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
          orElse: () {},
        );
      },
      child: BlocBuilder<AuthorizationBloc, AuthorizationState>(
        builder: (BuildContext context, AuthorizationState state) {
          return ReactiveForm(
            formGroup: autForm,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(
                    'assets/picturies/picture_back_3.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset('assets/picturies/picture_back_2.svg',
                      width: MediaQuery.of(context).size.width),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset('assets/picturies/picture_back_1.svg',
                      width: MediaQuery.of(context).size.width),
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFBDD2B6).withOpacity(0.3))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationPage()));
                        },
                        child: const Text(
                          'Зарегистрироваться',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Text(
                        'У вас нет аккаунта?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFBDD2B6),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Авторизация',
                          style: bigTextStyle.copyWith(color: primaryColor),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReactiveTextField(
                          decoration: WidgetStyle().customInputDecoration(
                              labelText: 'email', iconName: 'icon_mail'),
                          formControlName: 'email',
                          onSubmitted: () => autForm.focus('password'),
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
                          obscureText: true,
                          validationMessages: (control) => {
                            'required': 'Пожалуйста, заполните поле',
                            'minLength':
                                'Пароль должен содержать минимум 8 символов',
                            'maxLength':
                                'Пароль должен содержать максимум 32 символа',
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
                                    if (autForm.valid) {
                                      widget.autUser(
                                        autForm.control('email').value,
                                        autForm.control('password').value,
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          CustomScaffoldMessages().show(
                                              title:
                                                  'Проверьте правильность заполнения полей'));
                                    }
                                  },
                                  child: const Text(
                                    'Войти',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
