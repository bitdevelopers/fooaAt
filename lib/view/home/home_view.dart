import 'package:flutter/material.dart';

import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_infinty.dart';
import 'package:food_at/widgets/custom_half_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                  image: "assets/icons/home-active.png", title: "shopCategory"),
              const CustomContainerInfinity(
                  image: "assets/icons/home-active.png", title: "shopBrand"),
              const CustomContainerInfinity(
                  image: "assets/icons/home-active.png", title: "shophistory"),
              const CustomContainerInfinity(
                  image: "assets/icons/home-active.png", title: "offers"),
              Row(
                children: const [
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons/home-active.png",
                    title: "Organic",
                    imageRight: false,
                  )),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons/home-active.png",
                    title: "sugar",
                    imageRight: true,
                  )),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons/home-active.png",
                    title: "Organic",
                    imageRight: false,
                  )),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons/home-active.png",
                    title: "sugar",
                    imageRight: true,
                  )),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons/home-active.png",
                    title: "Organic",
                    imageRight: false,
                  )),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                      child: CustomHalfContainer(
                    image: "assets/icons/home-active.png",
                    title: "sugar",
                    imageRight: true,
                  )),
                ],
              ),
              //slider image
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
