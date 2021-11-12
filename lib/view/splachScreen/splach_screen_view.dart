import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view/bottom_bar/bottom_bar_view.dart';
import 'package:food_at/widgets/splach_screen_widget.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => BottomBarView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplachScreenWidget());
  }
}
