import 'package:flutter/material.dart';
import 'screens/onboarding_page.dart';
import 'screens/login_page.dart';
import 'screens/home_page.dart';

Route<dynamic> createPageRoute(Widget page, [RouteSettings? settings]) {
  return MaterialPageRoute(
    builder: (_) => page,
    settings: settings,
  );
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/onboarding':
      return createPageRoute(const OnboardingPage(), settings);
    case '/login':
      return createPageRoute(const LoginPage(), settings);
    case '/home':

      return createPageRoute(const HomePage(), settings);
    default:
      return createPageRoute(
        const Scaffold(
          body: Center(child: Text('Page not found')),
        ),
        settings,
      );
  }
}
