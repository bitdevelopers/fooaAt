import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';

class CustomTitleAccount extends StatelessWidget {
  final String? image;
  final String? title;
  const CustomTitleAccount({Key? key, this.image, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("$image"),
          const SizedBox(
            width: 16,
          ),
          Text(
            "${getLang(context, "$title")}",
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
