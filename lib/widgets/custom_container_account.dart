import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerAccount extends StatelessWidget {
  const CustomContainerAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 160,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.colorBorder),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getLang(context, "First name")}",
                    style: Styles.textFontSize14grey,
                  ),
                  Text(
                    "${getLang(context, "Ahmad")}",
                    style: Styles.textFontSize14Black,
                  ),
                ],
              ),
              const SizedBox(
                width: 48,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getLang(context, "Last name")}",
                    style: Styles.textFontSize14grey,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "${getLang(context, "kittaneh")}",
                    style: Styles.textFontSize14Black,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getLang(context, "Phone number")}",
                    style: Styles.textFontSize14grey,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "00962792839194",
                    style: Styles.textFontSize14Black,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getLang(context, "Location")}",
                    style: Styles.textFontSize14grey,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "${getLang(context, "details location")}",
                    style: Styles.textFontSize14Black,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
