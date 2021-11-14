import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerSearchWidget extends StatelessWidget {
  final String image;
  final String hint;
  final Function? onTap;
  final String? imageSearch;
  const CustomContainerSearchWidget(
      {Key? key,
      required this.image,
      required this.hint,
      this.onTap,
      required this.imageSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: AppColor.colorHomeContainer,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(image),
            ),
            Expanded(
                child: TextFormField(
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.zero,
                prefixIcon: Image.asset(imageSearch!),
                // ignore: unnecessary_string_interpolations
                hintText: "${getLang(context, "$hint")}",
                hintStyle: Styles.hintSearchProduct16,
                isDense: true,
                focusedErrorBorder: OutlineInputBorder(
                    gapPadding: 60,
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none),
                errorBorder: OutlineInputBorder(
                  gapPadding: 50,
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                    gapPadding: 10,
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
