import 'package:flutter/material.dart';
import 'package:food_at/view_model/provider/locale_provider.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_account.dart';
import 'package:food_at/widgets/custom_container_information.dart';
import 'package:food_at/widgets/custom_container_setting.dart';
import 'package:food_at/widgets/custom_title_account.dart';
import 'package:provider/provider.dart';

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
        body: Consumer<LocaleProvider>(
          builder: (context, model, chils) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  children: [
                    const CustomTitleAccount(
                      image: "assets/icon_svg/account.svg",
                      title: "Account",
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    // container details account
                    CustomContainerAccount(
                      locale: model.locale,
                    ),

                    const SizedBox(
                      height: 5.0,
                    ),
                    const CustomTitleAccount(
                      image: "assets/icon_svg/settings.svg",
                      title: "Settings",
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    // container details setting
                    const CustomContainerSetting(),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const CustomTitleAccount(
                      image: "assets/icon_svg/information.svg",
                      title: "Information",
                    ),
                    const CustomContainerInformation(),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
