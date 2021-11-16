import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:provider/provider.dart';

class CustomSearchWidget extends StatefulWidget {
  final String hint;
  final Function? onTap;
  final String? imageSearch;
  const CustomSearchWidget(
      {Key? key, required this.hint, this.onTap, this.imageSearch})
      : super(key: key);

  @override
  _CustomSearchWidgetState createState() => _CustomSearchWidgetState();
}

class _CustomSearchWidgetState extends State<CustomSearchWidget> {
  String enable = "";
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(builder: (context, model, child) {
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
              Expanded(
                  child: TextFormField(
                style: Styles.textFontSize16black,
                onChanged: (val) {
                  setState(() {
                    enable = val;
                  });
                  model.setSearch(val);
                },
                decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: enable.isNotEmpty
                      ? null
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(widget.imageSearch!),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "${getLang(context, widget.hint)}",
                              style: Styles.hintSearchProduct16,
                            )
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
    });
  }
}
