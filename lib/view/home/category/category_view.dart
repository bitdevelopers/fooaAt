import 'package:flutter/material.dart';
import 'package:food_at/model/type_category.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/view_model/category_view_model.dart';
import 'package:food_at/view_model/provider/locale_provider.dart';
import 'package:food_at/widgets/arabic/custom_continer_infinity_arabic.dart';
import 'package:food_at/widgets/arabic/custom_type_category_arabic.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_infinty.dart';
import 'package:food_at/widgets/custom_type_category.dart';
import 'package:provider/provider.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final CategoryViewModel _categoryViewModel = CategoryViewModel();
  // ignore: unused_field
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Consumer<LocaleProvider>(
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  model.locale == const Locale("en")
                      ? CustomContainerInfinity(
                          image: "assets/icon_svg/ios-arrow-back.svg",
                          title: 'shop',
                          color: AppColor.colorHomeContainer,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      : CustomContainerInfinityArabic(
                          image: "assets/icons/ios-arrow-arabic.svg",
                          title: 'shop',
                          color: AppColor.colorHomeContainer,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  GridView.builder(
                    itemCount: _categoryViewModel.list.length,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      List<TypeCategoryModel> data =
                          model.locale == const Locale("en")
                              ? _categoryViewModel.list
                              : _categoryViewModel.listArabic;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: model.locale == const Locale("en")
                                ? CustomTypeCategory(
                                    image: "${data[index].img}",
                                    title: "${data[index].title}",
                                    subTitle: "${data[index].subTitle}",
                                    onTap: data[index].onTap)
                                : CustomTypeCategoryArabic(
                                    image: "${data[index].img}",
                                    title: "${data[index].title}",
                                    subTitle: "${data[index].subTitle}",
                                    onTap: data[index].onTap),
                          ),
                        ],
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2.4 / 1,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
