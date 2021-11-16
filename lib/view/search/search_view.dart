import 'package:flutter/material.dart';
import 'package:food_at/model/product_image_model.dart';
import 'package:food_at/view_model/product_view_model.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_search_widget.dart';
import 'package:food_at/widgets/render_product_image.dart';
import 'package:provider/provider.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final ProductViewModel _productViewModel = ProductViewModel();

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
                    CustomSearchWidget(
                      hint: 'Search for products',
                      imageSearch: "assets/icons/search_small.png",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    model.search.isNotEmpty
                        ? ListView.builder(
                            itemCount: 2,
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              List<ProductImageModel> data =
                                  _productViewModel.productImage;

                              //render product image
                              return RenderProductImage(
                                image: data[index].image,
                                name: data[index].name,
                                quantity: data[index].quantity,
                                price: data[index].price,
                                newPrice: data[index].newPrice,
                                discount: data[index].discount,
                                number: data[index].number,
                              );
                            },
                          )
                        : Container(),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
