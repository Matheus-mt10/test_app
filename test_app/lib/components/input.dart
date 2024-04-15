import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.obsText, required this.textLabel});

  final bool obsText;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      obscureText: obsText,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), labelText: textLabel),
    );
  }
}
