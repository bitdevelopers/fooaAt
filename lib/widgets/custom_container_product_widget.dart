import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerProduct extends StatelessWidget {
  final String? name;
  final dynamic price;
  final Function? onTapDialog;
  const CustomContainerProduct(
      {Key? key, this.name, this.price, this.onTapDialog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              onTapDialog!();
            },
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 175,
                height: 41,
                decoration: BoxDecoration(
                  color: AppColor.colorHomeContainer,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "${getLang(context, "${name}")}",
                        style: Styles.textFontSize16black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "${getLang(context, "jd")}",
                          style: Styles.textFontSize12PrimaryColor,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Row(
                          children: [
                            Text(
                              price.toString(),
                              style: Styles.textFontSize12PrimaryColor,
                            ),
                            Text(
                              "${getLang(context, "kg")}",
                              style: Styles.textFontSize12PrimaryColor,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
