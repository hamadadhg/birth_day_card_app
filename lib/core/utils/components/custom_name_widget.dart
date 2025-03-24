import 'package:birthday_card_app/core/utils/managers/cubits/birth_day_cubit/birth_day_cubit.dart';
import 'package:birthday_card_app/core/utils/components/custom_text_form_field_widget.dart';
import 'package:birthday_card_app/core/utils/components/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNameWidget extends StatelessWidget {
  const CustomNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomTextWidget(
            text: 'What Is His 👨/ Her 👩‍🦰 Name?',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFormFieldWidget(
            onChanged: (value) {
              context.read<BirthDayCubit>().name = value;
            },
            onEditingComplete: () {
              BlocProvider.of<BirthDayCubit>(context).navigateMethod(
                context: context,
              );
            },
          ),
        ],
      ),
    );
  }
}
