import 'package:flutter/material.dart';

class ProviderData extends ChangeNotifier {
  bool _complete = false;

  bool get complete => _complete;

  void setComplete(bool value) {
    _complete = value;
    notifyListeners();
  }
}
