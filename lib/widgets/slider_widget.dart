import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/home_view_model.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final HomeViewModel _homeViewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: Colors.white,
        ),
        height: 150,
        width: double.infinity,
        child: CarouselSlider(
          options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, i) {
                _homeViewModel.current = index;
              }),
          items: _homeViewModel.listSlider.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                    children: _homeViewModel.listSlider
                        .map(
                          (e) => Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    "assets/images/slider_img.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${getLang(context, "${e.offer}")}",
                                      style: Styles.textFontSize16White,
                                    ),
                                    Text(
                                      "${getLang(context, "${e.type}")}",
                                      style: Styles.textFontSize14White,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: _homeViewModel.listSlider.map(
                                    (e) {
                                      int index =
                                          _homeViewModel.listSlider.indexOf(e);
                                      return Container(
                                        width: 10.0,
                                        height: 10.0,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: _homeViewModel.current == index
                                              ? AppColor.primaryColor
                                              : Colors.white,
                                        ),
                                      );
                                    },
                                  ).toList(), // this was the part the I had to add
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList());
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
