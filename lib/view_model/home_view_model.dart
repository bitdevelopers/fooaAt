import 'package:food_at/model/home_model.dart';
import 'package:food_at/model/slider_image_model.dart';

class HomeViewModel {
  late int current = 0;
  // ignore: prefer_final_fields
  List<HomeModel> listVertical = [
    HomeModel(
      image: "assets/icons_home/category.svg",
      title: "shopCategory",
    ),
    HomeModel(
      image: "assets/icons_home/Shopping Cart.svg",
      title: "shopBrand",
    ),
    HomeModel(
      image: "assets/icons_home/rearrange.svg",
      title: "shophistory",
    ),
    HomeModel(
      image: "assets/icons_home/shopping tag.svg",
      title: "offers",
    ),
  ];

  List<HomeModel> listHorzental = [
    HomeModel(
      image: "assets/icons_home/organic.svg",
      title: "Organic",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/sugar-free.svg",
      title: "sugar",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/Oil.svg",
      title: "Low fat",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/Oil.svg",
      title: "Gluten free",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/actose-food.svg",
      title: "Vegan",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/bread.svg",
      title: "Low carb",
      imageRight: true,
    ),
  ];
  List<HomeModel> listHorzentalArabic = [
    HomeModel(
      image: "assets/icons_home/sugar-free.svg",
      title: "sugar",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/organic.svg",
      title: "Organic",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/Oil.svg",
      title: "Gluten free",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/Oil.svg",
      title: "Low fat",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/bread.svg",
      title: "Low carb",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/actose-food.svg",
      title: "Vegan",
      imageRight: false,
    ),
  ];

  List<SliderImageModel> listSlider = [
    SliderImageModel(
      img: "assets/images/slider_img.jpg",
      offer: "sales",
      type: "all Vegetables",
    ),
    SliderImageModel(
      img: "assets/images/slider_img.jpg",
      offer: "sales",
      type: "all Vegetables",
    ),
    SliderImageModel(
      img: "assets/images/slider_img.jpg",
      offer: "sales",
      type: "all Vegetables",
    )
  ];
}
