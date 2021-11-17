import 'package:flutter/material.dart';
import 'package:food_at/view_model/cart_view_model.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_favorite.dart';
import 'package:food_at/widgets/custom_title_favorite.dart';

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
                  const CustomTitleFavorite(),
                  Column(
                    children: _cartViewModel.cartData
                        .map((e) => CustomContainerFavorite(
                            image: e.image,
                            name: e.name,
                            quantity: e.quantity,
                            discount: false,
                            price: e.price,
                            number: 100))
                        .toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
