import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';

class CustomTitleFavorite extends StatelessWidget {
  const CustomTitleFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            "${getLang(context, "Favorite product")}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
