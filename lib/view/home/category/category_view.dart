import 'package:flutter/material.dart';
import 'package:food_at/model/type_category.dart';
import 'package:food_at/values/color.dart';
import 'package:food_at/view_model/bottom_bar_view_model.dart';
import 'package:food_at/view_model/category_view_model.dart';
import 'package:food_at/widgets/custom_app_bar.dart';
import 'package:food_at/widgets/custom_container_infinty.dart';
import 'package:food_at/widgets/custom_navigation_bar.dart';
import 'package:food_at/widgets/custom_type_category.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final CategoryViewModel _categoryViewModel = CategoryViewModel();
  // ignore: unused_field
  int _selectedItem = 0;

  final BottomBarViewModel _bottomBarViewModel = BottomBarViewModel();
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
              CustomContainerInfinity(
                image: "assets/icons/icon_arrow_back.png",
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
                  List<TypeCategoryModel> data = _categoryViewModel.list;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: CustomTypeCategory(
                            image: "${data[index].img}",
                            title: "${data[index].title}",
                            subTitle: "${data[index].subTitle}",
                            onTap: data[index].onTap),
                      ),
                    ],
                  );
                },
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.4 / 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
              )
            ],
          ),
        ),
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
