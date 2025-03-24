import 'package:birthday_card_app/core/utils/helpers/outline_input_border_helper.dart';
import 'package:birthday_card_app/core/utils/helpers/responsive_size_to_text.dart';
import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:birthday_card_app/core/utils/styles/style_to_texts.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.onChanged,
    required this.onEditingComplete,
  });
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      cursorColor: StyleToColors.whiteColor,
      style: StyleToTexts.textStyle16.copyWith(
        fontSize: responsiveSizeToText(
          fontSize: 16,
          context: context,
        ),
      ),
      decoration: InputDecoration(
        enabledBorder: outlineInputBorderHelper(context: context),
        focusedBorder: outlineInputBorderHelper(context: context),
        labelText: 'Name:',
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelStyle: StyleToTexts.textStyle20.copyWith(
          fontSize: responsiveSizeToText(
            fontSize: 20,
            context: context,
          ),
        ),
      ),
    );
  }
}
