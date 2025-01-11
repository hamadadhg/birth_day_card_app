/*
import 'dart:async';
import 'package:birthday_card_app/views/birth_day_view.dart';
import 'package:birthday_card_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class PartyView extends StatefulWidget {
  const PartyView({super.key});
  static String partyViewId = 'PartyView';

  @override
  State<PartyView> createState() => _PartyViewState();
}

class _PartyViewState extends State<PartyView> {
  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushNamed(
          context,
          BirthDayView.birthDayViewId,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffAE0000,
      ).withValues(
        alpha: 0.7,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/gif/party_gif.webp',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextWidget(
            text: 'Today , There Is',
            fontSize: 50,
            fontFamily: 'Dancing Script',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextWidget(
            text: 'A Party',
            fontSize: 50,
            fontFamily: 'Dancing Script',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextWidget(
            text: '🥳',
            fontSize: 50,
          ),
        ],
      ),
    );
  }
}
*/
