import 'package:flutter/material.dart';
import '../routes.dart';
import '../navigation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigation.pushNamed(Routes.home);
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
