import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_account.dart';
import 'package:food_at/widgets/custom_container_setting.dart';
import 'package:food_at/widgets/custom_title_account.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: [
              const CustomTitleAccount(
                image: "assets/icons/love-96.png",
                title: "Account",
              ),
              const SizedBox(
                height: 5.0,
              ),
              // container details account
              const CustomContainerAccount(),

              const SizedBox(
                height: 5.0,
              ),
              const CustomTitleAccount(
                image: "assets/icons/love-96.png",
                title: "Settings",
              ),
              const SizedBox(
                height: 5.0,
              ),
              const CustomContainerSetting(),
              const SizedBox(
                height: 5.0,
              ),
              const CustomTitleAccount(
                image: "assets/icons/love-96.png",
                title: "Information",
              ),
              Container(
                width: double.infinity,
                height: 156,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.colorBorder),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
