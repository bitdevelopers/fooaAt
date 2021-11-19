import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerInformation extends StatefulWidget {
  const CustomContainerInformation({Key? key}) : super(key: key);

  @override
  _CustomContainerInformationState createState() =>
      _CustomContainerInformationState();
}

class _CustomContainerInformationState
    extends State<CustomContainerInformation> {
  bool enable = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: enable ? 215.h : 160.h,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.colorBorder),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ExpansionTile(
            childrenPadding: const EdgeInsets.symmetric(vertical: 2),
            onExpansionChanged: (value) {
              setState(() {
                enable = !enable;
              });
            },
            trailing: enable
                ? Image.asset("assets/icons/icons8-expand-arrow-100.png")
                : SvgPicture.asset("assets/icon_svg/arrow-ios.svg"),
            tilePadding: const EdgeInsets.all(0),
            title: Text(
              "${getLang(context, "Contact us")}",
              style: Styles.textFontSize14black,
            ),
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icon_svg/icons8-mail-100.svg"),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "FoodAt@yahoo.com",
                        style: Styles.textFontSize14grey,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icon_svg/icons8-phone-100.svg"),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text("00962792839193", style: Styles.textFontSize14grey)
                    ],
                  ),
                ],
              )
            ],
          ),
          const Divider(
            height: 5,
            color: AppColor.colorDivider,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${getLang(context, "About us")}",
                    style: Styles.textFontSize14Black,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 5,
            color: AppColor.colorDivider,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${getLang(context, "privacy policy")}",
                    style: Styles.textFontSize14Black,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 5,
            color: AppColor.colorDivider,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${getLang(context, "Terms & conditions")}",
                    style: Styles.textFontSize14Black,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
