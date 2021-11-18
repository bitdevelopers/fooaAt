import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';

class CustomTitleCart extends StatelessWidget {
  const CustomTitleCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            "${getLang(context, "Cart")}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
