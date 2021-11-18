import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomBitton extends StatelessWidget {
  final String? title;
  const CustomBitton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 40,
      decoration: BoxDecoration(
          color: AppColor.colorButton, borderRadius: BorderRadius.circular(20)),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "${getLang(context, title.toString())}",
          style: Styles.textFontSize18White,
        ),
      ),
    );
  }
}
