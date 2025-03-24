import 'dart:async';
import 'package:birthday_card_app/core/utils/constants/duration_variables.dart';
import 'package:birthday_card_app/core/utils/constants/string_variables.dart';
import 'package:birthday_card_app/core/utils/helpers/push_go_router_helper.dart';
import 'package:flutter/material.dart';

void timerWithRouterHelper({required BuildContext context}) {
  Timer(
    kOneSeconds,
    () {
      pushGoRouterHelper(
        context: context,
        view: kBirthDayView,
      );
    },
  );
}
