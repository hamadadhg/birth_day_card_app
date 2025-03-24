import 'package:birthday_card_app/core/utils/components/custom_name_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String homeViewId = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(
        0xff23272E,
      ),
      body: CustomNameWidget(),
    );
  }
}
