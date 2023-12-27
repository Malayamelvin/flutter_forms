// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String customText;
  double textSize;
  Color textColor;
  CustomText({
    super.key,
    required this.customText,
    required this.textColor,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      customText,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
      ),
    );
  }
}
