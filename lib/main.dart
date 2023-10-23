import 'package:example_app_localizations/lang/app_locatizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appLocalization = AppLocalizations(locale: const Locale('en'));
  await appLocalization.loadJsonLanguage();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final translatedHello = "hello".tr(context);
    final translatedName = "name".tr(context);
    return MaterialApp(
      locale: const Locale('en', 'US'),
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }

        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(AppLocalizations.of(context).translate("hello")),
            ),
            Center(
              child: Text(AppLocalizations.of(context).translate("hello")),
            ),
            Center(
              child: Text(AppLocalizations.of(context).translate("hello")),
            ),
          ],
        ),
      ),
    );
  }
}
