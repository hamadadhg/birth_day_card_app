import 'package:birthday_card_app/core/utils/managers/cubits/birth_day_cubit/birth_day_cubit.dart';
import 'package:birthday_card_app/core/utils/blocs/bloc_observer/simple_bloc_observer.dart';
import 'package:birthday_card_app/core/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom,
    ],
  );
  runApp(
    const BirthDayCardApp(),
  );
}

class BirthDayCardApp extends StatelessWidget {
  const BirthDayCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BirthDayCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
