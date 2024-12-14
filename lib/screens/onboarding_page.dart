import 'package:flutter/material.dart';
import '../routes.dart';
import '../navigation.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigation.pushNamed(Routes.login);
          },
          child: const Text('Go to Login'),
        ),
      ),
    );
  }
}
