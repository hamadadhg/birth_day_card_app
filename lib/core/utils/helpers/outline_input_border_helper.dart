import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorderHelper({required BuildContext context}) {
  double height = MediaQuery.of(context).size.height;
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      height * 0.02,
    ),
    borderSide: BorderSide(
      color: StyleToColors.whiteColor,
    ),
  );
}
