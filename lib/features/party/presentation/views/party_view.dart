import 'package:birthday_card_app/core/utils/styles/style_to_colors.dart';
import 'package:birthday_card_app/features/party/presentation/views/widgets/background_color_party_view.dart';
import 'package:birthday_card_app/features/party/presentation/views/widgets/custom_party_view_body.dart';
import 'package:flutter/material.dart';

class PartyView extends StatefulWidget {
  const PartyView({super.key});

  @override
  State<PartyView> createState() => _PartyViewState();
}

class _PartyViewState extends State<PartyView> {
  @override
  void initState() {
    // routerWithTimerHelper(
    //   context: context,
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundColorPartyView(
      child: Scaffold(
        backgroundColor: StyleToColors.transparentColor,
        body: CustomPartyViewBody(),
      ),
    );
  }
}
