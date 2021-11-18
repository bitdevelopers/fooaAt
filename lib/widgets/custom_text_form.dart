import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';

class CustomTextForm extends StatelessWidget {
  final String? hint;
  final String? sufficText;
  final Widget? suffixIcon;
  final bool? enableSuffix;
  const CustomTextForm(
      {Key? key,
      this.hint,
      this.sufficText,
      this.suffixIcon,
      this.enableSuffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixText:
            enableSuffix == true ? "${getLang(context, "$sufficText")}" : "",
        suffixStyle: const TextStyle(color: Colors.red, fontSize: 12),
        suffixIcon: suffixIcon,
      ),
      controller: TextEditingController(
        text: "$hint",
      ),
    );
  }
}
