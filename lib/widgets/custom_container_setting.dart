import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/provider/locale_provider.dart';
import 'package:provider/provider.dart';

class CustomContainerSetting extends StatelessWidget {
  const CustomContainerSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(builder: (context, model, child) {
      return Container(
        width: double.infinity,
        height: 72,
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
                Text(
                  "${getLang(context, "language")}",
                  style: Styles.textFontSize14Black,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    model.setLocale(const Locale("en"));
                    model.changeLanguage(const Locale("en"));
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/arabic.svg"),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "${getLang(context, "English")}",
                        style: Styles.textFontSize14Black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                InkWell(
                  onTap: () {
                    model.setLocale(const Locale("ar"));
                    model.changeLanguage(const Locale("ar"));
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/arabic.svg"),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "${getLang(context, "Arabic")}",
                        style: Styles.textFontSize14Black,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
