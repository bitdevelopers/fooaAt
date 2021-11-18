import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale("en");

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (_locale == type) {
      return;
    }
    if (type == const Locale("ar")) {
      _locale = const Locale("ar");
      await prefs.setString('language_code', 'ar');
      await prefs.setString('countryCode', '');
    } else {
      _locale = const Locale("en");
      await prefs.setString('language_code', 'en');
      await prefs.setString('countryCode', 'US');
    }
    notifyListeners();
  }

  fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      _locale = const Locale('en');
      return Null;
    }
    _locale = Locale(prefs.getString('language_code').toString());
    return prefs;
  }
}
