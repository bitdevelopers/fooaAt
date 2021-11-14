import 'package:flutter/material.dart';
import 'package:food_at/model/product_model.dart';
import 'package:food_at/values/color.dart';

class ProductViewModel {
  //dialog product

  void showDialogN(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          content: SizedBox(
              width: 205,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/icons/delete.png")),
                  Image.asset("assets/icons/minus.png"),
                  const Text(
                    "0.25 kg",
                    style:
                        TextStyle(fontSize: 13, color: AppColor.primaryColor),
                  ),
                  Image.asset("assets/icons/plus.png"),
                  Image.asset("assets/icons/buy.png"),
                ],
              )),
        );
      },
    );
  }

  //list product
  List<ProductModel> products = [
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Potato",
      price: 0.57,
    ),
    ProductModel(
      name: "garlic",
      price: 0.57,
    ),
    ProductModel(
      name: "Onion",
      price: 0.57,
    ),
    ProductModel(
      name: "Asparagus",
      price: 0.57,
    ),
    ProductModel(
      name: "Olive",
      price: 0.57,
    ),
    ProductModel(
      name: "Broccoli",
      price: 0.57,
    ),
    ProductModel(
      name: "Eggplant",
      price: 0.57,
    ),
    ProductModel(
      name: "Paprika",
      price: 0.57,
    ),
    ProductModel(
      name: "Beet",
      price: 0.57,
    ),
    ProductModel(
      name: "Peas",
      price: 0.57,
    ),
    ProductModel(
      name: "Cucumber",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
    ProductModel(
      name: "Tomato",
      price: 0.57,
    ),
  ];
}
