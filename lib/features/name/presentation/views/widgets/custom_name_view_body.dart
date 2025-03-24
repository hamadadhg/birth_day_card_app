import 'package:birthday_card_app/core/utils/constants/string_variables.dart';
import 'package:birthday_card_app/core/utils/helpers/push_go_router_helper.dart';
import 'package:birthday_card_app/core/utils/helpers/responsive_size_to_text.dart';
import 'package:birthday_card_app/core/utils/managers/cubits/birth_day_cubit/birth_day_cubit.dart';
import 'package:birthday_card_app/core/utils/styles/style_to_texts.dart';
import 'package:birthday_card_app/features/name/presentation/views/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNameViewBody extends StatelessWidget {
  const CustomNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.025,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What Is His 👨/ Her 👩‍🦰 Name?',
            style: StyleToTexts.textStyle24.copyWith(
              fontSize: responsiveSizeToText(
                fontSize: 24,
                context: context,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          CustomTextFormFieldWidget(
            onChanged: (value) {
              context.read<BirthDayCubit>().name = value;
            },
            onEditingComplete: () {
              String? value = context.read<BirthDayCubit>().name;
              if (value != '' && value != null) {
                pushGoRouterHelper(
                  context: context,
                  view: kPartyView,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
