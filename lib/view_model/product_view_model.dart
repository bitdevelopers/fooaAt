import 'package:flutter/material.dart';
import 'package:food_at/model/product_image_model.dart';
import 'package:food_at/model/product_model.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:provider/provider.dart';

class ProductViewModel {
  //dialog product
  void showDialogN(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Consumer<ProviderData>(
          builder: (context, model, child) {
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
                    InkWell(
                        onTap: () {
                          model.setComplete(true);
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/icons/buy.png")),
                  ],
                ),
              ),
            );
          },
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

  List<ProductImageModel> productImage = [
    ProductImageModel(
        image: "assets/icons/nescafe.png",
        name: "Nescafe gold coffee",
        quantity: "200 gram",
        discount: false,
        price: 'JD 4.80/Pc',
        number: 100),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: true,
      price: 'JD 4.80/Pc',
      newPrice: 'JD 3.80/Pc',
      number: 15,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 90,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 55,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 1,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 1,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 1,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 1,
    ),
    ProductImageModel(
      image: "assets/icons/nescafe.png",
      name: "Nescafe gold coffee",
      quantity: "200 gram",
      discount: false,
      price: 'JD 4.80/Pc',
      number: 1,
    )
  ];
}
