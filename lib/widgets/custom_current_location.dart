import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view/checkout/sub_map/sub_map.dart';

class CustomCurrentLocation extends StatelessWidget {
  const CustomCurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 160.h,
          child: const SubMApView(),
        ),
        Positioned(
          bottom: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: Colors.white60,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${getLang(context, "Your current location")}",
                        style: Styles.textFontSize14Black,
                      ),
                      Text(
                        "${getLang(context, "Queen noor st.")}",
                        style: Styles.hintMap,
                      ),
                      Text(
                        "${getLang(context, "Building number 24")}",
                        style: Styles.hintMap,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "${getLang(context, "Change")}",
                        style: Styles.textFontSize12Red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
