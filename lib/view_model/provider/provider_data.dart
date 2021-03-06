import 'package:flutter/material.dart';
import 'package:food_at/model/product_image_model.dart';

class ProviderData extends ChangeNotifier {
  bool _complete = false;

  bool get complete => _complete;

  String _search = "";

  String get search => _search;

  int _typePayment = 2;

  int get typePayment => _typePayment;

  final List<ProductImageModel> _dataFavorite = [];

  List<ProductImageModel> get dataFavorite => _dataFavorite;

  void setComplete(bool value) {
    _complete = value;
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 1000), () {
      _complete = false;
      notifyListeners();
    });
  }

  void setSearch(String val) {
    _search = val;
    notifyListeners();
  }

  void addFavorite(ProductImageModel val) {
    _dataFavorite.add(val);
    notifyListeners();
  }

  void setTypePayment(int val) {
    _typePayment = val;
    notifyListeners();
  }
}
