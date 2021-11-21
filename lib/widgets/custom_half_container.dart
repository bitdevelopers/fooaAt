import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomHalfContainer extends StatelessWidget {
  final String image;
  final String title;
  final bool imageRight;
  const CustomHalfContainer(
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 150,
        height: 55,
        decoration: BoxDecoration(
          color: AppColor.colorHomeContainer,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: imageRight == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(image),
                  const SizedBox(
                    width: 25.0,
                  ),
                  Flexible(
                    child: Text(
                      "${getLang(context, title)}",
                      style: Styles.textFontSize18,
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "${getLang(context, title)}",
                      style: Styles.textFontSize18,
                    ),
                  ),
                  SvgPicture.asset(image),
                ],
              ),
      ),
    );
  }
}
