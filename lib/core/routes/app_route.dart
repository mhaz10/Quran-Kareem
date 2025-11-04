import 'package:flutter/material.dart';
import 'package:quran_kareem/core/routes/routes.dart';

import '../../features/onboarding/views/onboarding_view.dart';

class AppRouter {
  const AppRouter._();

  static Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      default:
        return MaterialPageRoute(
          builder: (_) =>
          const Scaffold(
            body: Center(
              child: Text('No route defined for this path'),
            ),
          ),
        );
    }
  }
}