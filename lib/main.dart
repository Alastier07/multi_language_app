import 'package:flutter/material.dart';

void main() {
  runApp(const MultiLanguageApp());
}

class MultiLanguageApp extends StatelessWidget {
  const MultiLanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
