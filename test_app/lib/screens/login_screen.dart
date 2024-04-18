import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Digite seu login e senha para entrar',
            style: TextStyle(fontSize: 24),
          ),
          const Input(obsText: false, textLabel: 'Login'),
          const Input(obsText: true, textLabel: 'Senha'),
          FilledButton(onPressed: () {}, child: const Text('Logar'))
        ],
      ),
    );
  }
}
