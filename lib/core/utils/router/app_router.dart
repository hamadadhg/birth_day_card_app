import 'package:birthday_card_app/core/utils/constants/string_variables.dart';
import 'package:birthday_card_app/features/name/presentation/views/name_view.dart';
import 'package:birthday_card_app/features/party/presentation/views/party_view.dart';
import 'package:birthday_card_app/main.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kNameView,
        builder: (context, state) => const NameView(),
      ),
      GoRoute(
        path: kPartyView,
        builder: (context, state) => const PartyView(),
      ),
      GoRoute(
        path: kBirthDayView,
        builder: (context, state) => const BirthDayCardApp(),
      ),
    ],
  );
}
