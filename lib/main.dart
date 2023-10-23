import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      // localeResolutionCallback: (deviceLocale, supportedLocales) {
      //   for (var locale in supportedLocales) {
      //     if (deviceLocale != null &&
      //         deviceLocale.languageCode == locale.languageCode) {
      //       return deviceLocale;
      //     }
      //   }supportedLocales.first;
      // },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("hello".tr()),
            ),
            Center(
              child: Text("hello".tr()),
            ),
            Center(
              child: Text("hello".tr()),
            ),
          ],
        ),
      ),
    );
  }
}
