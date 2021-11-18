import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/model/cart_model.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view/checkout/checkout_view.dart';
import 'package:food_at/view_model/cart_view_model.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_button.dart';
import 'package:food_at/widgets/custom_container_cart.dart';
import 'package:food_at/widgets/custom_list_view_cart.dart';
import 'package:food_at/widgets/custom_title_cart.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final CartViewModel _cartViewModel = CartViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  const CustomTitleCart(),
                  Column(
                    children: _cartViewModel.cartData
                        .map(
                          (e) => CustomConatinerCart(
                              image: e.image,
                              name: e.name,
                              quantity: e.quantity,
                              discount: false,
                              price: e.price,
                              number: 100),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${getLang(context, "Sub Total")}",
                        style: Styles.textFontSize16black,
                      ),
                      Text(
                        "JOD 7.80",
                        style: Styles.textFontSize16black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${getLang(context, "Delivery")}",
                        style: Styles.textFontSize16black,
                      ),
                      Text(
                        "JOD 0.99",
                        style: Styles.textFontSize16black,
                      ),
                    ],
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${getLang(context, "Grand total")}",
                        style: Styles.textFontSize16black,
                      ),
                      Text(
                        "JOD 8.80",
                        style: Styles.textFontSize16black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // button checkout
                  CustomBitton(
                    title: "Check out",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CheckOutView();
                      }));
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${getLang(context, "Offers")}",
                        style: Styles.textFontSize18black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // List view Offers
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        List<CartModel> data = _cartViewModel.cartData;
                        return CustomListViewCart(
                          image: data[index].image,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
