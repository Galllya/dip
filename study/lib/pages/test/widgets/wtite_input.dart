import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/ui/sourse/widget_style.dart';

class WriteInput extends StatelessWidget {
  final FormGroup form;
  final bool? isTrue;
  const WriteInput({Key? key, required this.form, this.isTrue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isTrue == null ? false : true,
      child: ReactiveForm(
        formGroup: form,
        child: ReactiveTextField(
          formControlName: 'def',
          readOnly: isTrue == null ? false : true,
          autofocus: isTrue == null ? false : true,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: WidgetStyle()
              .easyCustomInputDecoration(labelText: '...')
              .copyWith(
                fillColor: isTrue != null
                    ? isTrue!
                        ? const Color(0xFF8FFF8C)
                        : const Color(0xFFFF8080)
                    : Colors.black,
                filled: isTrue == null ? false : true,
              ),
          showErrors: (_) => false,
        ),
      ),
    );
  }
}
