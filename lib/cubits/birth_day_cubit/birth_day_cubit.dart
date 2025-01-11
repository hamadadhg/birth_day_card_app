import 'package:birthday_card_app/cubits/birth_day_cubit/birth_day_state.dart';
import 'package:birthday_card_app/views/party_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthDayCubit extends Cubit<BirthDayState> {
  BirthDayCubit()
      : super(
          InitialState(),
        );
  String? name;
  void navigateMethod({required BuildContext context}) {
    if (name != '' && name != null) {
      Navigator.pushNamed(
        context,
        PartyView.partyViewId,
      );
      emit(
        SuccessState(),
      );
    }
  }
}
