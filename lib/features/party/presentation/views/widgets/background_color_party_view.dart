import 'package:flutter/material.dart';

class BackgroundColorPartyView extends StatelessWidget {
  const BackgroundColorPartyView({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(
              0xffBC721B,
            ),
            Color(
              0xffCFB757,
            ),
            Color(
              0xff9D9087,
            ),
          ],
        ),
      ),
      child: child,
    );
  }
}
