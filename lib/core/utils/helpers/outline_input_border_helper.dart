import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorderHelper() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      15,
    ),
    borderSide: BorderSide(
      color: StyleToColors.kWhiteColor,
    ),
  );
}
