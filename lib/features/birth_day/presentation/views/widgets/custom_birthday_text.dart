import 'package:birthday_card_app/core/utils/helpers/responsive_size_to_text.dart';
import 'package:birthday_card_app/core/utils/styles/style_to_texts.dart';
import 'package:flutter/material.dart';

class CustomBirthdayText extends StatelessWidget {
  const CustomBirthdayText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'For Hamada',
      style: StyleToTexts.textStyle48.copyWith(
        fontSize: responsiveSizeToText(
          fontSize: 48,
          context: context,
        ),
      ),
    );
  }
}
