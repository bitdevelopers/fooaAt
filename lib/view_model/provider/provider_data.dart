import 'package:flutter/material.dart';

class ProviderData extends ChangeNotifier {
  bool _complete = false;

  bool get complete => _complete;

  String _search = "";

  String get search => _search;

  void setComplete(bool value) {
    _complete = value;
    notifyListeners();
  }

  void setSearch(String val) {
    _search = val;
    notifyListeners();
  }
}
