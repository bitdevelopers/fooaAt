import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomTypeCategoryArabic extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final Widget? onTap;

  const CustomTypeCategoryArabic({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return onTap!;
        }));
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 175,
          height: 80,
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
              Expanded(flex: 2, child: Image.asset(image)),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        "${getLang(context, title)}",
                        style: Styles.textTitleCategory,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Flexible(
                      child: Text(
                        "${getLang(context, subTitle)}",
                        style: Styles.textSubTitleCategory,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
