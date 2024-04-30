import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/components/base_scaffold.dart';
import 'package:test_app/components/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Digite seu login e senha para entrar',
              style: TextStyle(fontSize: 24),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Input(obsText: false, textLabel: 'Login'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 10),
              child: Input(obsText: true, textLabel: 'Senha'),
            ),
            FilledButton(
                onPressed: () {
                  context.go('/homepage');
                },
                child: const Text('Logar'))
          ],
        ),
      ),
    );
  }
}
