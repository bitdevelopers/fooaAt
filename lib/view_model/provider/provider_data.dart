import 'package:flutter/material.dart';
import 'package:food_at/model/product_image_model.dart';

class ProviderData extends ChangeNotifier {
  bool _complete = false;

  bool get complete => _complete;

  String _search = "";

  String get search => _search;

  List<ProductImageModel> _dataFavorite = [];

  List<ProductImageModel> get dataFavorite => _dataFavorite;

  void setComplete(bool value) {
    _complete = value;
    notifyListeners();
  }

  void setSearch(String val) {
    _search = val;
    notifyListeners();
  }

  void addFavorite(ProductImageModel val) {
    _dataFavorite.add(val);
    notifyListeners();
  }
}
