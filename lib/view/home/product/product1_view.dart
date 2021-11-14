import 'package:flutter/material.dart';
import 'package:food_at/model/product_model.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/view_model/bottom_bar_view_model.dart';
import 'package:food_at/view_model/product_view_model.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_product_widget.dart';
import 'package:food_at/widgets/custom_container_search_widget.dart';
import 'package:food_at/widgets/custom_navigation_bar.dart';

class Product1View extends StatefulWidget {
  const Product1View({Key? key}) : super(key: key);

  @override
  _Product1ViewState createState() => _Product1ViewState();
}

class _Product1ViewState extends State<Product1View> {
  int _selectedItem = 0;

  final BottomBarViewModel _bottomBarViewModel = BottomBarViewModel();
  final ProductViewModel _productViewModel = ProductViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                  GridView.builder(
                    itemCount: _productViewModel.products.length,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      List<ProductModel> data = _productViewModel.products;
                      return CustomContainerProduct(
                        name: data[index].name,
                        price: data[index].price,
                        onTapDialog: () {
                          _productViewModel.showDialogN(context);
                        },
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3.5 / 1,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                color: AppColor.primaryColor,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Text("maher"),
              ))
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: _bottomBarViewModel.imageList,
        iconListActive: _bottomBarViewModel.imageListActive,
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
    );
  }
}
