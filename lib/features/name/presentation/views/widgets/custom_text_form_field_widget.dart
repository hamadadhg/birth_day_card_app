import 'package:birthday_card_app/core/utils/helpers/outline_input_border_helper.dart';
import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The Field Is Required';
        }
        return null;
      },
      cursorColor: StyleToColors.kWhiteColor,
      style: const TextStyle(
        color: StyleToColors.kWhiteColor,
      ),
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 18,
        ),
        border: outlineInputBorderHelper(),
        enabledBorder: outlineInputBorderHelper(),
        focusedBorder: outlineInputBorderHelper(),
        labelText: 'Name:',
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelStyle: TextStyle(
          color: StyleToColors.kWhiteColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
