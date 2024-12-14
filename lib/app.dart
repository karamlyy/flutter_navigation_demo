import 'package:flutter/material.dart';
import 'routes.dart';
import 'navigation.dart';
import 'route_generator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
      navigatorKey: Navigation.navigatorKey,
      initialRoute: Routes.onboarding.path,
      onGenerateRoute: generateRoute, // Custom route generator
    );
  }
}
