import 'package:birthday_card_app/core/utils/helpers/responsive_size_to_text.dart';
import 'package:birthday_card_app/core/utils/styles/style_to_texts.dart';
import 'package:flutter/material.dart';

class CustomTextParty extends StatelessWidget {
  const CustomTextParty({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: StyleToTexts.textStyle42.copyWith(
        fontSize: responsiveSizeToText(
          fontSize: 42,
          context: context,
        ),
      ),
    );
  }
}
