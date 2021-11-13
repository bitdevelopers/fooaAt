import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/view_model/home_view_model.dart';

import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_infinty.dart';
import 'package:food_at/widgets/custom_half_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewModel _homeViewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: Column(
            children: [
              const CustomContainerInfinity(
                  image: "assets/icons_home/category.png",
                  title: "shopCategory"),
              const CustomContainerInfinity(
                  image: "assets/icons_home/shopping_Cart.png",
                  title: "shopBrand"),
              const CustomContainerInfinity(
                  image: "assets/icons_home/rearrange.png",
                  title: "shophistory"),
              const CustomContainerInfinity(
                  image: "assets/icons_home/shopping_tag.png", title: "offers"),
              Row(
                children: const [
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons_home/organic.png",
                    title: "Organic",
                    imageRight: false,
                  )),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons_home/sugar-free.png",
                    title: "sugar",
                    imageRight: true,
                  )),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons_home/Oil.png",
                    title: "Low fat",
                    imageRight: false,
                  )),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons_home/Gluten_Free.png",
                    title: "Gluten free",
                    imageRight: true,
                  )),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons_home/food.png",
                    title: "Vegan",
                    imageRight: false,
                  )),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons_home/bread.png",
                    title: "Low carb",
                    imageRight: true,
                  )),
                ],
              ),

              //slider image
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.primaryColor),
                height: 150,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/slider_img.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
