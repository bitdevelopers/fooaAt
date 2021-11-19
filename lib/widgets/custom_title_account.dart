import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';

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
          Container(
            width: 30,
            height: 30,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: AppColor.colorButton,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset("$image"),
          ),
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
