import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomDetailsCash extends StatelessWidget {
  const CustomDetailsCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${getLang(context, "Sub Total")}",
              style: Styles.textFontSize14black,
            ),
            Text(
              "JOD 7.80",
              style: Styles.textFontSize14black,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${getLang(context, "Delivery Fee")}",
              style: Styles.textFontSize14black,
            ),
            Text(
              "JOD 0.99",
              style: Styles.textFontSize14black,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          height: 5,
          color: AppColor.colorDivider,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${getLang(context, "Grand total")}",
              style: Styles.textFontSize14black,
            ),
            Text(
              "JOD 0.99",
              style: Styles.textFontSize14black,
            ),
          ],
        ),
      ],
    );
  }
}
