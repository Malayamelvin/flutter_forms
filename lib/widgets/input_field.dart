// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  String textFieldLabel;
  bool textObscure;
  Widget prefixIcon;
  Widget? suffixIcon;
  TextEditingController textFieldController = TextEditingController();

  InputFields({
    super.key,
    required this.textFieldLabel,
    required this.textObscure,
    required this.prefixIcon,
    required this.textFieldController,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter $textFieldLabel";
        }
        return null;
      },
      controller: textFieldController,
      obscureText: textObscure,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
        fillColor: Colors.white,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.green, width: 3),
        ),
      ),
    );
  }
}
