import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomContainerSearchWidgetArabic extends StatefulWidget {
  final String image;
  final String hint;
  final Function? onTap;
  final String? imageSearch;
  const CustomContainerSearchWidgetArabic(
      {Key? key,
      required this.image,
      required this.hint,
      this.onTap,
      this.imageSearch})
      : super(key: key);

  @override
  _CustomContainerSearchWidgetArabicState createState() =>
      _CustomContainerSearchWidgetArabicState();
}

class _CustomContainerSearchWidgetArabicState
    extends State<CustomContainerSearchWidgetArabic> {
  String enable = "";
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
              child: SvgPicture.asset(widget.image),
            ),
            Expanded(
                child: TextFormField(
              style: Styles.textFontSize16black,
              onChanged: (val) {
                setState(() {
                  enable = val;
                });
              },
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.zero,
                prefixIcon: enable.isNotEmpty
                    ? null
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${getLang(context, widget.hint)}",
                            style: Styles.hintSearchProduct16,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(widget.imageSearch!),
                        ],
                      ),
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
