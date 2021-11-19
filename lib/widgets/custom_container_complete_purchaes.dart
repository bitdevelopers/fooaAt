import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerCompletePurchaes extends StatelessWidget {
  const CustomContainerCompletePurchaes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              offset: const Offset(0, 10),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ]),
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/check-square.png"),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${getLang(context, "Tomato")}",
                            style: Styles.textFontSize16black,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "2.25",
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
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "${getLang(context, "jod")}",
                        style: Styles.textFontSize15Red,
                      ),
                      Text(
                        "1.30",
                        style: Styles.textFontSize15Red,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
