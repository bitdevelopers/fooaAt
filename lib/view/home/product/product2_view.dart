import 'package:flutter/material.dart';
import 'package:food_at/model/product_image_model.dart';
import 'package:food_at/view_model/product_view_model.dart';
import 'package:food_at/widgets/custom_app_bar.dart';

import 'package:food_at/widgets/custom_container_search_widget.dart';
import 'package:food_at/widgets/render_product_image.dart';

class Product2View extends StatefulWidget {
  const Product2View({Key? key}) : super(key: key);

  @override
  _Product2ViewState createState() => _Product2ViewState();
}

class _Product2ViewState extends State<Product2View> {
  final ProductViewModel _productViewModel = ProductViewModel();
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
              CustomContainerSearchWidget(
                image: "assets/icons/icon_arrow_back.png",
                hint: 'Search for products',
                imageSearch: "assets/icons/search_small.png",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 5.0,
              ),
              ListView.builder(
                itemCount: _productViewModel.productImage.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  List<ProductImageModel> data = _productViewModel.productImage;

                  //render product image
                  return RenderProductImage(
                    data: data[index],
                    image: data[index].image,
                    name: data[index].name,
                    quantity: data[index].quantity,
                    price: data[index].price,
                    newPrice: data[index].newPrice,
                    discount: data[index].discount,
                    number: data[index].number,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
