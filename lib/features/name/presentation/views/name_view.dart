import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:birthday_card_app/features/name/presentation/views/widgets/custom_name_view_body.dart';
import 'package:flutter/material.dart';

class NameView extends StatelessWidget {
  const NameView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: StyleToColors.littleBlackColor,
      body: CustomNameViewBody(),
    );
  }
}
