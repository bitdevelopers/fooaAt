import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/widgets/custom_app_bar.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/splach-screen.png'),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${getLang(context, 'splachScreen')}",
                  style: Styles.textBlackSplachScreen,
                ),
                TextSpan(text: " Food-At", style: Styles.textGreenSplachScreen)
              ],
            ),
          ),
          Text(
            "Find your daily goods is here",
            style: Styles.textGreySplachScreen,
          )
        ],
      ),
    ));
  }
}
