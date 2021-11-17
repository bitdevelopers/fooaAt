import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_account.dart';
import 'package:food_at/widgets/custom_container_information.dart';
import 'package:food_at/widgets/custom_container_setting.dart';
import 'package:food_at/widgets/custom_title_account.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool enable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: const [
              CustomTitleAccount(
                image: "assets/icons/love-96.png",
                title: "Account",
              ),
              SizedBox(
                height: 5.0,
              ),
              // container details account
              CustomContainerAccount(),

              SizedBox(
                height: 5.0,
              ),
              CustomTitleAccount(
                image: "assets/icons/love-96.png",
                title: "Settings",
              ),
              SizedBox(
                height: 5.0,
              ),
              // container details setting
              CustomContainerSetting(),
              SizedBox(
                height: 5.0,
              ),
              CustomTitleAccount(
                image: "assets/icons/love-96.png",
                title: "Information",
              ),
              CustomContainerInformation(),
            ],
          ),
        ),
      ),
    );
  }
}
