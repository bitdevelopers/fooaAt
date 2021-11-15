import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/model/product_image_model.dart';
import 'package:food_at/model/product_model.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/product_view_model.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_product_widget.dart';
import 'package:food_at/widgets/custom_container_search_widget.dart';

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
                    List<ProductImageModel> data =
                        _productViewModel.productImage;
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 60,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("${data[index].image}"),
                              //information product
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "${getLang(
                                        context,
                                        "${data[index].name}",
                                      )}",
                                      style: Styles.textFontSize14Black,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "${getLang(
                                        context,
                                        "${data[index].quantity}",
                                      )}",
                                      style: Styles.hintGrey12,
                                    ),
                                  ),
                                  data[index].discount == false
                                      ? Text(
                                          "${getLang(
                                            context,
                                            "${data[index].price}",
                                          )}",
                                          style:
                                              Styles.textFontSize12PrimaryColor,
                                        )
                                      : Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "${getLang(
                                                  context,
                                                  "${data[index].price}",
                                                )}",
                                                style: Styles
                                                    .textFontSize12DiscountPrimaryColor,
                                              ),
                                              const SizedBox(
                                                width: 5.0,
                                              ),
                                              Text(
                                                "${getLang(
                                                  context,
                                                  "${data[index].newPrice}",
                                                )}",
                                                style: Styles.textFontSize12Red,
                                              ),
                                            ],
                                          ),
                                        ),
                                ],
                              ),
                              //shopping
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/icons/minus.png"),
                                  const SizedBox(
                                    width: 16.0,
                                  ),
                                  Container(
                                    width: 24,
                                    height: 15,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: AppColor.primaryColor,
                                    )),
                                    child: Text(
                                      "${data[index].number}",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: AppColor.primaryColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16.0,
                                  ),
                                  Image.asset("assets/icons/plus.png"),
                                ],
                              ),

                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/icons/love-96.png"),
                                  Image.asset("assets/icons/buy-2.png"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 5,
                          color: AppColor.colorDivider,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
