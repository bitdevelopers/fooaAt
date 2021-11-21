import 'package:flutter/material.dart';
import 'package:food_at/values/color.dart';
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
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                "25",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "100",
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 12),
                ),
                Text(
                  "JD",
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 12),
                )
              ],
            )
          ],
        ),
        Image.asset(
          "assets/icons/group.png",
        ),
      ],
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
