import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomTypeCategory extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const CustomTypeCategory({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: 175,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 0.9,
              color: AppColor.colorBorder,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "${getLang(context, title)}",
                        style: Styles.textTitleCategory,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "${getLang(context, subTitle)}",
                        style: Styles.textSubTitleCategory,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
