import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomHalfContainerArabic extends StatelessWidget {
  final String image;
  final String title;
  final bool imageRight;
  const CustomHalfContainerArabic(
      {Key? key,
      required this.image,
      required this.title,
      required this.imageRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          color: AppColor.colorHomeContainer,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: imageRight == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "${getLang(context, title)}",
                      style: Styles.textFontSize18,
                    ),
                  ),
                  Image.asset(image),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset(image)),
                  Expanded(
                    flex: 4,
                    child: Text(
                      "${getLang(context, title)}",
                      style: Styles.textFontSize18,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
