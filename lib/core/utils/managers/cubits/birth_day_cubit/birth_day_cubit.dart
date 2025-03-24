import 'package:birthday_card_app/core/utils/managers/cubits/birth_day_cubit/birth_day_state.dart';
import 'package:birthday_card_app/features/party/presentation/views/party_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthDayCubit extends Cubit<BirthDayState> {
  BirthDayCubit()
      : super(
          InitialState(),
        );
  String? name;
  void navigateMethod({required BuildContext context}) {
    emit(
      SuccessState(),
    );
  }
}
