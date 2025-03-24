import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:birthday_card_app/features/birth_day/presentation/views/widgets/custom_birthday_view_body.dart';
import 'package:flutter/material.dart';

class BirthDayView extends StatelessWidget {
  const BirthDayView({super.key});
  static String birthDayViewId = 'BirthDayView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleToColors.mediumBlackColor,
      body: CustomBirthdayViewBody(),
    );
  }
}
