import 'package:flutter/material.dart';
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
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Buy groceries easily with",
                  style: TextStyle(
                      color: Color.fromRGBO(34, 34, 34, 1), fontSize: 22),
                ),
                TextSpan(
                  text: " Food-At",
                  style: TextStyle(
                      color: Color.fromRGBO(
                        84,
                        175,
                        118,
                        1,
                      ),
                      fontSize: 22),
                )
              ],
              style: TextStyle(color: Colors.black),
            ),
          ),
          const Text(
            "Find your daily goods is here",
            style: TextStyle(
                color: Color.fromRGBO(
                  154,
                  154,
                  154,
                  1,
                ),
                fontSize: 22),
          )
        ],
      ),
    ));
  }
}
