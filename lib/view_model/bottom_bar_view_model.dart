import 'package:flutter/material.dart';
import 'package:food_at/view/cart/cart_view.dart';
import 'package:food_at/view/favorite/favorite_view.dart';
import 'package:food_at/view/home/home_view.dart';
import 'package:food_at/view/search/search_view.dart';
import 'package:food_at/view/setting/setting_view.dart';

class BottomBarViewModel {
  //image bottom bar
  List imageList = [
    Image.asset(
      "assets/icons/home.png",
    ),
    Image.asset(
      "assets/icons/feather.png",
    ),
    Image.asset(
      "assets/icons/group.png",
    ),
    Image.asset(
      "assets/icons/heart.png",
    ),
    Image.asset(
      "assets/icons/setting.png",
    ),
  ];

  //image active bottom bar
  List<Widget> imageListActive = [
    Image.asset(
      "assets/icons/home-active.png",
    ),
    Image.asset(
      "assets/icons/feather-active.png",
    ),
    Image.asset(
      "assets/icons/group-active.png",
    ),
    Image.asset(
      "assets/icons/heart-active.png",
    ),
    Image.asset(
      "assets/icons/setting-active.png",
    ),
  ];

  // transition page

  List<Widget> pages = [
    const HomeView(),
    const SearchView(),
    const CartView(),
    const FavoriteView(),
    const SettingView(),
  ];
}
