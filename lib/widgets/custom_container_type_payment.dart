import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:provider/provider.dart';

class CustomTypePayment extends StatelessWidget {
  const CustomTypePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(builder: (context, model, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              model.setTypePayment(0);
            },
            child: model.typePayment == 0
                ? Column(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      SvgPicture.asset("assets/icons/icons8-visa-144.svg"),
                    ],
                  )
                : SvgPicture.asset("assets/icons/icons8-visa-144.svg"),
          ),
          const SizedBox(
            width: 10.0,
          ),
          InkWell(
              onTap: () {
                model.setTypePayment(1);
              },
              child: model.typePayment == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        SvgPicture.asset(
                            "assets/icons/icons8-mastercard-96.svg"),
                      ],
                    )
                  : SvgPicture.asset("assets/icons/icons8-mastercard-96.svg")),
          const SizedBox(
            width: 10.0,
          ),
          InkWell(
              onTap: () {
                model.setTypePayment(2);
              },
              child: model.typePayment == 2
                  ? Column(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        SvgPicture.asset("assets/icons/icons8-wallet-96.svg")
                      ],
                    )
                  : SvgPicture.asset("assets/icons/icons8-wallet-96.svg")),
          const SizedBox(
            width: 10.0,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${getLang(context, "Cash on")}",
                  style: Styles.textFontSize14greyshade100,
                ),
                Text(
                  "${getLang(context, "Delivery")}",
                  style: Styles.textFontSize14greyshade100,
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
