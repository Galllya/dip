import 'package:flutter/material.dart';
import 'package:study/ui/sourse/colors.dart';

class CustomScaffoldMessages {
  SnackBar show({
    required String title,
  }) {
    return SnackBar(
      elevation: 20,
      content: Text(
        title,
        style: const TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
      ),
      margin: const EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      backgroundColor: primaryColor,
    );
  }
}
