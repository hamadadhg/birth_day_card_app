import 'package:birthday_card_app/core/utils/constants/string_variables.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void pushGoRouterHelper({required BuildContext context}) {
  GoRouter.of(context).push(
    kPartyView,
  );
}
