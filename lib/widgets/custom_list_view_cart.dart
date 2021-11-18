import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';

class CustomListViewCart extends StatelessWidget {
  final String? image;
  const CustomListViewCart({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 110,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.colorBorder,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 3, child: Image.asset(image.toString())),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Text(
                  "${getLang(context, "Add")}",
                  style: const TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
