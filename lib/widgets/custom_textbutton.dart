// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String buttonText;
  final VoidCallback callback;
  CustomTextButton(
      {super.key, required this.buttonText, required this.callback});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(buttonText),
    );
  }
}
