import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/widgets/custom_details_cash.dart';

import 'custom_text_form.dart';

class CustomDetailsVisa extends StatelessWidget {
  const CustomDetailsVisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${getLang(context, "Card holder name")}",
              style: Styles.textFontSize14greyshade100,
            ),
            const CustomTextForm(
              hint: "Ahmad kittaneh",
            )
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${getLang(context, "Card number")}",
              style: Styles.textFontSize14greyshade100,
            ),
            CustomTextForm(
              hint: "4747 6009 8123 5567",
              suffixIcon: SvgPicture.asset("assets/icons/icons8-visa-144.svg"),
            )
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${getLang(context, "Date")}",
                  style: Styles.textFontSize14greyshade100,
                ),
                const CustomTextForm(
                  hint: "09/27",
                )
              ],
            )),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getLang(context, "CVV")}",
                    style: Styles.textFontSize14greyshade100,
                  ),
                  const CustomTextForm(
                    hint: "674",
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        const CustomDetailsCash(),
      ],
    );
  }
}
