import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/pages/registration/bloc/registration_bloc.dart';
import 'package:study/pages/registration/view/registration_view.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late RegistrationBloc registrationBloc;

  @override
  void initState() {
    super.initState();
    registrationBloc = RegistrationBloc();
  }

  @override
  void dispose() {
    registrationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationBloc>.value(
      value: registrationBloc,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: RegistrationView(
          registerUser: (
            FormGroup form,
            Uint8List? file,
          ) {
            registrationBloc.add(RegistrationEvent.registerUser(form, file));
          },
        ),
      ),
    );
  }
}
