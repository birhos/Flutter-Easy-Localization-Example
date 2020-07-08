import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:easy_localization_example/app/homePage.dart';
import 'package:easy_localization_example/others/constants.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        LocalizationConstants.TR_LOCALE,
        LocalizationConstants.EN_LOCALE,
      ],
      saveLocale: false,
      path: LocalizationConstants.LANG_PATH,
      startLocale: LocalizationConstants.TR_LOCALE,
      preloaderColor: Colors.red,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Easy Localization Example",

      //
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      //
      home: HomePage(),
    );
  }
}
