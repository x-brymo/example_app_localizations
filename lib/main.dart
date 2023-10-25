import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }
        supportedLocales.first;
        return null;
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(AppLocalizations.of(context)!.home),
            ),
            Center(
              child: Text(AppLocalizations.of(context)!.home),
            ),
            Center(
              child: Text(AppLocalizations.of(context)!.home),
            ),
          ],
        ),
      ),
    );
  }
}
