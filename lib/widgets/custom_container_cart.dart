import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomConatinerCart extends StatelessWidget {
  final String? image;
  final String? name;
  final String? quantity;
  final bool? discount;
  final String? price;
  final String? newPrice;
  final dynamic number;
  const CustomConatinerCart({
    Key? key,
    this.image,
    this.name,
    this.quantity,
    this.discount,
    this.price,
    this.newPrice,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("$image"),
              const SizedBox(
                width: 16,
              ),
              //information product
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        "${getLang(
                          context,
                          "$name",
                        )}",
                        style: Styles.textFontSize14Black,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "${getLang(
                          context,
                          "$quantity",
                        )}",
                        style: Styles.hintGrey12,
                      ),
                    ),
                    discount == false
                        ? Text(
                            "${getLang(
                              context,
                              "$price",
                            )}",
                            style: Styles.textFontSize12PrimaryColor,
                          )
                        : Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "${getLang(
                                    context,
                                    "$price",
                                  )}",
                                  style:
                                      Styles.textFontSize12DiscountPrimaryColor,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "${getLang(
                                    context,
                                    "$newPrice",
                                  )}",
                                  style: Styles.textFontSize12Red,
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset("assets/icon_svg/icons8-delete-96.svg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/minus.png"),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Container(
                        width: 24,
                        height: 15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: AppColor.primaryColor,
                          ),
                        ),
                        child: Text("$number",
                            style: Styles.textFontSize13PrimaryColor),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Image.asset("assets/icons/plus.png"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 5,
          color: AppColor.colorDivider,
        )
      ],
    );
  }
}
