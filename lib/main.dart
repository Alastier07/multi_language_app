import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MultiLanguageApp());
}

class MultiLanguageApp extends StatelessWidget {
  const MultiLanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English
        Locale('es', ''), // Spanish
        Locale('fr', ''), // French
        Locale('de', ''), // German
        Locale('it', ''), // Italian
        Locale('pt', ''), // Portuguese
        Locale('nl', ''), // Dutch
        Locale('ru', ''), // Russian
        Locale('zh', ''), // Chinese (Simplified)
        Locale('zh', 'TW'), // Chinese (Traditional)
        Locale('ja', ''), // Japanese
        Locale('ko', ''), // Korean
        Locale('ar', ''), // Arabic
        Locale('hi', ''), // Hindi
        Locale('bn', ''), // Bengali
        Locale('tr', ''), // Turkish
        Locale('vi', ''), // Vietnamese
        Locale('th', ''), // Thai
        Locale('id', ''), // Indonesian
        Locale('tl', ''), // Filipino (Tagalog)
        Locale('el', ''), // Greek
        Locale('pl', ''), // Polish
        Locale('he', ''), // Hebrew
        Locale('sw', ''), // Swahili
        Locale('cs', ''), // Czech
        Locale('hu', ''), // Hungarian
        Locale('fi', ''), // Finnish
        Locale('da', ''), // Danish
        Locale('no', ''), // Norwegian
        Locale('sv', ''), // Swedish
        Locale('ro', ''), // Romanian
        Locale('uk', ''), // Ukrainian
        Locale('ms', ''), // Malay
        Locale('fa', ''), // Persian (Farsi)
        Locale('ur', ''), // Urdu
        Locale('ta', ''), // Tamil
        Locale('te', ''), // Telugu
        Locale('mr', ''), // Marathi
        Locale('gu', ''), // Gujarati
        Locale('pa', ''), // Punjabi
        Locale('si', ''), // Sinhala
        Locale('my', ''), // Burmese
        Locale('lo', ''), // Lao
        Locale('mn', ''), // Mongolian
      ],
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
