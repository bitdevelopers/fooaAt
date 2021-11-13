import 'package:flutter/material.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/values/styles.dart';
import 'package:food_at/view_model/home_view_model.dart';

class CustomSliderImage extends StatefulWidget {
  const CustomSliderImage({Key? key}) : super(key: key);

  @override
  _CustomSliderImageState createState() => _CustomSliderImageState();
}

class _CustomSliderImageState extends State<CustomSliderImage> {
  final HomeViewModel _homeViewModel = HomeViewModel();
  PageController? _controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width,
      child: Stack(
          children: _homeViewModel.listSlider
              .map(
                (e) => PageView.builder(
                  pageSnapping: false,
                  controller: _controller,
                  itemCount: _homeViewModel.listSlider.length,
                  onPageChanged: (val) {
                    setState(() {
                      _homeViewModel.current = val;
                    });
                  },
                  itemBuilder: (context, itemIndex) {
                    return Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/slider_img.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
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
                                      borderRadius: BorderRadius.circular(100),
                                      color: _homeViewModel.current == index
                                          ? AppColor.primaryColor
                                          : Colors.white),
                                );
                              },
                            ).toList(), // this was the part the I had to add
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
              .toList()),
    );
  }
}
