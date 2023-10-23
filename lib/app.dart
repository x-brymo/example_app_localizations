import 'package:easy_localization/easy_localization.dart';
import 'package:example_app_localizations/lang.class.dart';
import 'package:example_app_localizations/main.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: Translations.all,
    path: 'asset/Translations',
    fallbackLocale: Translations.all[0],
    startLocale: const Locale('ar'),
    child: const MainApp(),
  ));
}
