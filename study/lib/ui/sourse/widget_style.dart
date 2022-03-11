import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/theme.dart';

class WidgetStyle {
  InputDecoration customInputDecoration(
      {required String labelText, required String iconName}) {
    return InputDecoration(
      suffixIconConstraints: const BoxConstraints(minWidth: 70),
      labelText: labelText,
      suffixIcon: SvgPicture.asset(
        'assets/icons/$iconName.svg',
      ),
      filled: true,
      fillColor: gentlyPrimaryColor.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(fontSize: 16),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: theme.primaryColor),
      ),
    );
  }

  ButtonStyle elevatedButtonStyle() {
    return ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(lightPrimaryColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );
  }

  ButtonStyle mainElevatedButtonStyle() {
    return ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );
  }

  InputDecoration easyCustomInputDecoration(
      {required String labelText, bool isColapsed = false}) {
    return InputDecoration(
      labelText: labelText,
      contentPadding: isColapsed
          ? const EdgeInsets.fromLTRB(0, 0, 6, 6)
          : const EdgeInsets.all(0),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(fontSize: 16),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: theme.primaryColor),
      ),
      isCollapsed: isColapsed,
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: theme.primaryColor),
      ),
    );
  }

  InputDecoration largeInputDecoration({
    required String labelText,
  }) {
    return InputDecoration(
      suffixIconConstraints: const BoxConstraints(
        minWidth: 70,
      ),
      labelText: labelText,
      filled: true,
      fillColor: gentlyPrimaryColor.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(fontSize: 16),
    );
  }

  ButtonStyle whiteElevatedButtonStyle() {
    return ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  InputDecoration customForSearchInputDecoration(
      {required String labelText, required String iconName}) {
    return InputDecoration(
      suffixIconConstraints: const BoxConstraints(minWidth: 70),
      labelText: labelText,
      suffixIcon: SvgPicture.asset(
        'assets/icons/$iconName.svg',
        color: primaryColor,
      ),
      fillColor: gentlyPrimaryColor.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(fontSize: 16),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: theme.primaryColor),
      ),
    );
  }

  InputDecoration customForSendInputDecoration({required String labelText}) {
    return InputDecoration(
      suffixIconConstraints: const BoxConstraints(minWidth: 70),
      labelText: labelText,
      fillColor: gentlyPrimaryColor.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: const TextStyle(fontSize: 16),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: theme.primaryColor),
      ),
    );
  }

  ButtonStyle borderButtonStyle() {
    return ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            side: const BorderSide(
                color: lightPrimaryColor, width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
