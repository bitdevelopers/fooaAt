import 'package:flutter/material.dart';
import 'package:food_at/model/home_model.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/view/home/category/category_view.dart';
import 'package:food_at/view_model/home_view_model.dart';
import 'package:food_at/view_model/provider/locale_provider.dart';
import 'package:food_at/widgets/arabic/custom_half_container_arabic.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_infinty.dart';
import 'package:food_at/widgets/custom_half_container.dart';
import 'package:food_at/widgets/custom_slider_widget.dart';
import 'package:provider/provider.dart';

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
        body: Consumer<LocaleProvider>(
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  children: [
                    // home data vertical
                    Column(
                      children: _homeViewModel.listVertical
                          .map(
                            (e) => CustomContainerInfinity(
                              image: e.image.toString(),
                              title: e.title.toString(),
                              color: AppColor.colorHomeContainer,
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const CategoryView();
                                }));
                              },
                            ),
                          )
                          .toList(),
                    ),
                    // grid view
                    GridView.builder(
                      itemCount: _homeViewModel.listHorzental.length,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        List<HomeModel> data = _homeViewModel.listHorzental;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: model.locale == const Locale("en")
                                  ? CustomHalfContainer(
                                      image: "${data[index].image}",
                                      title: "${data[index].title}",
                                      imageRight: data[index].imageRight!,
                                    )
                                  : CustomHalfContainerArabic(
                                      image: "${data[index].image}",
                                      title: "${data[index].title}",
                                      imageRight: data[index].imageRight!,
                                    ),
                            ),
                          ],
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                    ),
                    const CustomSliderImage()
                  ],
                ),
              ),
            );
          },
        ));
  }
}
