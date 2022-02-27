import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class CardInColoda extends StatelessWidget {
  final int indexOfCard;
  final Function deleteCard;
  final FormGroup form;
  const CardInColoda({
    Key? key,
    required this.form,
    required this.deleteCard,
    required this.indexOfCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: softColor,
          border: Border.all(
            color: primaryColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ReactiveForm(
          formGroup: form,
          child: ReactiveFormConsumer(builder: (context, form, child) {
            return Padding(
                padding: EdgeInsets.fromLTRB(
                    ((form.control('definition').valid) &&
                            form.control('term').valid)
                        ? 0
                        : 46,
                    0,
                    16,
                    16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if ((form.control('definition').valid) &&
                        form.control('term').valid)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 20, 0),
                        child: InkWell(
                          onTap: () {
                            deleteCard(indexOfCard, form);
                          },
                          child: SvgPicture.asset(
                            'assets/icons/icon_close.svg',
                            color: primaryColor,
                          ),
                        ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ReactiveTextField(
                                    formControlName: 'term',
                                    decoration: WidgetStyle()
                                        .easyCustomInputDecoration(
                                            labelText: 'Термин',
                                            isColapsed: true),
                                    onSubmitted: () => form.focus('definition'),
                                    validationMessages: (control) => {
                                      'required': 'Пожалуйста, введите термин',
                                    },
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: softColor,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      'assets/icons/icon_dots.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ReactiveTextField(
                                    formControlName: 'definition',
                                    decoration: WidgetStyle()
                                        .easyCustomInputDecoration(
                                            labelText: 'Определение',
                                            isColapsed: true),
                                    validationMessages: (control) => {
                                      'required':
                                          'Пожалуйста, введите отпределение',
                                    },
                                    maxLines: null,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: softColor,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      'assets/icons/icon_dots.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
