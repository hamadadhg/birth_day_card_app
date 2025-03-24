import 'package:birthday_card_app/features/name/presentation/views/widgets/custom_name_view_body.dart';
import 'package:flutter/material.dart';

class NameView extends StatelessWidget {
  const NameView({super.key});
  static String homeViewId = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(
        0xff23272E,
      ),
      body: CustomNameViewBody(),
    );
  }
}
