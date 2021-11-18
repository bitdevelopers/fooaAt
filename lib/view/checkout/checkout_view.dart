import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_button.dart';
import 'package:food_at/widgets/custom_container_checkout.dart';
import 'package:food_at/widgets/custom_container_type_payment.dart';
import 'package:food_at/widgets/custom_details_cash.dart';
import 'package:food_at/widgets/custom_details_visa.dart';
import 'package:food_at/widgets/custom_text_form.dart';
import 'package:provider/provider.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  _CheckOutViewState createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: Consumer<ProviderData>(
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  children: [
                    CustomContainerCheckOut(
                      image: "assets/icons/icon_arrow_back.png",
                      title: 'Checkout',
                      color: Colors.white,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${getLang(context, "First name")}",
                              style: Styles.textFontSize14greyshade100,
                            ),
                            const CustomTextForm(
                              hint: "Ahmad",
                            )
                          ],
                        )),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${getLang(context, "Second name")}",
                              style: Styles.textFontSize14greyshade100,
                            ),
                            const CustomTextForm(
                              hint: "Kittaneh",
                            )
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${getLang(context, "Mobile number")}",
                          style: Styles.textFontSize14greyshade100,
                        ),
                        const CustomTextForm(
                          hint: "00962792839193",
                          sufficText: "Change",
                          enableSuffix: true,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${getLang(context, "City")}",
                          style: Styles.textFontSize14greyshade100,
                        ),
                        const CustomTextForm(
                          hint: "Amman",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${getLang(context, "Street address")}",
                              style: Styles.textFontSize14greyshade100,
                            ),
                            const CustomTextForm(
                              hint: "Mecca St.",
                            )
                          ],
                        )),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${getLang(context, "Building number")}",
                              style: Styles.textFontSize14greyshade100,
                            ),
                            const CustomTextForm(
                              hint: "24",
                            )
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${getLang(context, "Note")}",
                          style: Styles.textFontSize14greyshade100,
                        ),
                        const CustomTextForm(
                          hint: "Hello",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 160.h,
                      child: Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "${getLang(context, "Payment method")}",
                          style: Styles.textFontSize14greyshade100,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // type payment
                    const CustomTypePayment(),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 5,
                      color: AppColor.colorDivider,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // custom container cash payment
                    model.typePayment == 2
                        ? const CustomDetailsCash()
                        : const CustomDetailsVisa(),

                    const SizedBox(
                      height: 5,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: CustomBitton(
                        title: "Place order",
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
