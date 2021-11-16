import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/provider/provider_data.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_favorite.dart';
import 'package:food_at/widgets/custom_container_search_widget.dart';
import 'package:food_at/widgets/custom_title_favorite.dart';
import 'package:food_at/widgets/render_product_image.dart';
import 'package:provider/provider.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  bool ok = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: Consumer<ProviderData>(
          builder: (context, model, child) {
            return model.dataFavorite.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/heart-outline.svg"),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "${getLang(context, "Your favorite is empty")}",
                          style: Styles.styleFovoriteNathigSize18,
                        )
                      ],
                    ),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: Column(
                        children: [
                          const CustomTitleFavorite(),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Column(
                              children: model.dataFavorite
                                  .map((e) => CustomContainerFavorite(
                                      image: e.image,
                                      name: e.name,
                                      quantity: e.quantity,
                                      discount: e.discount,
                                      price: e.price,
                                      newPrice: e.newPrice,
                                      number: e.number))
                                  .toList())
                        ],
                      ),
                    ),
                  );
          },
        ));
  }
}
