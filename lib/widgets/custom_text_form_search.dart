import 'package:flutter/material.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';

class CustomTextFormSearch extends StatelessWidget {
  final Widget? prefix;
  final String? hint;
  const CustomTextFormSearch({
    Key? key,
    this.prefix,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.colorHomeContainer,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                prefix: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: prefix),
                hintText: hint,
                hintStyle: Styles.hintSearch20,
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
            ),
          ),
        ));
  }
}
