import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.color = StyleToColors.whiteColor,
    required this.text,
    this.fontSize = 25,
    this.fontFamily = '',
    this.textCase = false,
  });
  final String text;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final bool textCase;
  @override
  Widget build(BuildContext context) {
    return Text(
      textCase ? text.toUpperCase() : text.toLowerCase(),
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
      ),
    );
  }
}
