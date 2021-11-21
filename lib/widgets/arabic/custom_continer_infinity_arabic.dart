import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerInfinityArabic extends StatelessWidget {
  final String image;
  final String title;
  final Function? onTap;
  final Color? color;
  const CustomContainerInfinityArabic(
      {Key? key,
      required this.image,
      required this.title,
      this.onTap,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () {
          onTap!();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(image),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                "${getLang(context, title)}",
                style: Styles.textFontSize18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
