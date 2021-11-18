import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';

class CustomTypePayment extends StatelessWidget {
  const CustomTypePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset("assets/icons/icons8-visa-144.svg"),
        const SizedBox(
          width: 10.0,
        ),
        SvgPicture.asset("assets/icons/icons8-mastercard-96.svg"),
        const SizedBox(
          width: 10.0,
        ),
        SvgPicture.asset("assets/icons/icons8-wallet-96.svg"),
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
  }
}
