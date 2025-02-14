import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MultiLanguageApp());
}

class MultiLanguageApp extends StatelessWidget {
  const MultiLanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localizations.hello),
            TextButton(
              onPressed: () {
                setState(() {
                  S.load(Locale('en'));
                });
              },
              child: Text('English'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  S.load(Locale('zh-TW'));
                });
              },
              child: Text('Chinese'),
            ),
          ],
        ),
      ),
    );
  }
}
