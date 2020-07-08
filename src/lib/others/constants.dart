import 'package:flutter/material.dart';

class LocalizationConstants {
  LocalizationConstants._();

  static const String LANG_PATH = "assets/lang";

  static const Locale TR_LOCALE = Locale("tr", "TR");
  static const Locale EN_LOCALE = Locale("en", "US");

  static String toggleTitle(String languageCode) {
    switch (languageCode) {
      case "tr":
        return "EN";
      case "en":
        return "TR";
      default:
        return "";
    }
  }

  static Locale toggleLocale(String languageCode) {
    switch (languageCode) {
      case "tr":
        return EN_LOCALE;
      case "en":
        return TR_LOCALE;
      default:
        return null;
    }
  }
}
