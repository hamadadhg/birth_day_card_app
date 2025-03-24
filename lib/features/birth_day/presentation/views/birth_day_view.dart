import 'package:birthday_card_app/core/utils/managers/cubits/birth_day_cubit/birth_day_cubit.dart';
import 'package:birthday_card_app/core/utils/managers/cubits/birth_day_cubit/birth_day_state.dart';
import 'package:birthday_card_app/core/utils/components/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthDayView extends StatelessWidget {
  const BirthDayView({super.key});
  static String birthDayViewId = 'BirthDayView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff9933FF,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/gif/birth_day_gif.webp',
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<BirthDayCubit, BirthDayState>(
              builder: (context, state) {
                return CustomTextWidget(
                  text: 'for  ${context.read<BirthDayCubit>().name}',
                  textCase: true,
                  color: const Color(
                    0xff145386,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
