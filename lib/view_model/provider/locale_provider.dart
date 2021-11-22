import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale("en");

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  // void changeLanguage(Locale type) async {
  //   var prefs = await SharedPreferences.getInstance();
  //   if (_locale == type) {
  //     return;
  //   }
  //   if (type == const Locale("ar")) {
  //     _locale = const Locale("ar");
  //     await prefs.setString('language_code', 'ar');
  //     await prefs.setString('countryCode', '');
  //   } else {
  //     _locale = const Locale("en");
  //     await prefs.setString('language_code', 'en');
  //     await prefs.setString('countryCode', 'US');
  //   }
  //   notifyListeners();
  // }

  // fetchLocale() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? langugae = prefs.getString('language_code');
  //   try {
  //     return langugae;
  //   } catch (err) {
  //     return Future(() => null);
  //   }
  // }
}
