import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:provider/provider.dart';

class RenderProductImage extends StatelessWidget {
  final dynamic data;
  final String? image;
  final String? name;
  final String? quantity;
  final bool? discount;
  final String? price;
  final String? newPrice;
  final dynamic number;
  const RenderProductImage({
    Key? key,
    this.image,
    this.name,
    this.quantity,
    this.discount,
    this.price,
    this.newPrice,
    this.number,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(builder: (context, model, chat) {
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
                //information product
                Column(
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
                //shopping
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          border: Border.all(
                        color: AppColor.primaryColor,
                      )),
                      child: Text("$number",
                          style: Styles.textFontSize13PrimaryColor),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Image.asset("assets/icons/plus.png"),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                          "assets/icon_svg/icons8-love-96.svg"),
                      onTap: () {
                        model.addFavorite(data);
                      },
                    ),
                    InkWell(
                      child: SvgPicture.asset("assets/icons/buy-active.svg"),
                      onTap: () {},
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
    });
  }
}
