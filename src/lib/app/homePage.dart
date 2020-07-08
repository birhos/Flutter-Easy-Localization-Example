import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:easy_localization_example/core/extensions/string.dart';
import 'package:easy_localization_example/others/constants.dart';
import 'package:easy_localization_example/others/localeKeys.g.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_appBarTitle.locale),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            context.locale = LocalizationConstants.toggleLocale(context.locale.languageCode);
          },
          child: Text(LocalizationConstants.toggleTitle(context.locale.languageCode)),
        ),
      ),
    );
  }
}
