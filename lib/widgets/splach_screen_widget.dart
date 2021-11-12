import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';

class SplachScreenWidget extends StatelessWidget {
  const SplachScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/splach-screen.png'),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${getLang(context, 'textSplachScreen')}",
                  style: Styles.textBlackSplachScreen,
                ),
                TextSpan(text: " Food-At", style: Styles.textGreenSplachScreen)
              ],
            ),
          ),
          Text(
            "${getLang(context, 'text2SplachScreen')}",
            style: Styles.textGreySplachScreen,
          )
        ],
      ),
    );
  }
}
