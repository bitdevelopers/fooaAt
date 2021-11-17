import 'package:food_at/model/cart_model.dart';

class CartViewModel {
  List<CartModel> cartData = [
    CartModel(
        image: "assets/icons/nescafe.png",
        name: "Nescafe gold coffee",
        quantity: "200 gram",
        discount: false,
        price: 'JD 4.80/Pc',
        number: 100),
    CartModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: true,
      price: 'JD 4.80/Pc',
      newPrice: 'JD 3.80/Pc',
      number: 15,
    ),
    CartModel(
      image: "assets/images/tomoto.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 90,
    ),
    CartModel(
      image: "assets/images/pepsi.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 55,
    ),
  ];
}
