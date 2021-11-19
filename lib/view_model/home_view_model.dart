import 'package:food_at/model/home_model.dart';
import 'package:food_at/model/slider_image_model.dart';

class HomeViewModel {
  late int current = 0;
  // ignore: prefer_final_fields
  List<HomeModel> listVertical = [
    HomeModel(
      image: "assets/icons_home/category.png",
      title: "shopCategory",
    ),
    HomeModel(
      image: "assets/icons_home/shopping_Cart.png",
      title: "shopBrand",
    ),
    HomeModel(
      image: "assets/icons_home/rearrange.png",
      title: "shophistory",
    ),
    HomeModel(
      image: "assets/icons_home/shopping_tag.png",
      title: "offers",
    ),
  ];

  List<HomeModel> listHorzental = [
    HomeModel(
      image: "assets/icons_home/organic.png",
      title: "Organic",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/sugar-free.png",
      title: "sugar",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/Oil.png",
      title: "Low fat",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/Gluten_Free.png",
      title: "Gluten free",
      imageRight: true,
    ),
    HomeModel(
      image: "assets/icons_home/food.png",
      title: "Vegan",
      imageRight: false,
    ),
    HomeModel(
      image: "assets/icons_home/bread.png",
      title: "Low carb",
      imageRight: true,
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


//  model.locale == const Locale("ar")
//                         ? Row(
//                             children: const [
//                               Expanded(
//                                   child: CustomHalfContainerArabic(
//                                 image: "assets/icons_home/sugar-free.png",
//                                 title: "sugar",
//                                 imageRight: true,
//                               )),
//                               SizedBox(
//                                 width: 5.0,
//                               ),
//                               Expanded(
//                                   child: CustomHalfContainerArabic(
//                                 image: "assets/icons_home/organic.png",
//                                 title: "Organic",
//                                 imageRight: false,
//                               )),
//                             ],
//                           )
//                         : Row(
//                             children: const [
//                               Expanded(
//                                   child: CustomHalfContainer(
//                                 image: "assets/icons_home/organic.png",
//                                 title: "Organic",
//                                 imageRight: false,
//                               )),
//                               SizedBox(
//                                 width: 5.0,
//                               ),
//                               Expanded(
//                                   child: CustomHalfContainer(
//                                 image: "assets/icons_home/sugar-free.png",
//                                 title: "sugar",
//                                 imageRight: true,
//                               )),
//                             ],
//                           ),
//                     Row(
//                       children: const [
//                         Expanded(
//                             child: CustomHalfContainer(
//                           image: "assets/icons_home/Oil.png",
//                           title: "Low fat",
//                           imageRight: false,
//                         )),
//                         SizedBox(
//                           width: 5.0,
//                         ),
//                         Expanded(
//                             child: CustomHalfContainer(
//                           image: "assets/icons_home/Gluten_Free.png",
//                           title: "Gluten free",
//                           imageRight: true,
//                         )),
//                       ],
//                     ),
//                     Row(
//                       children: const [
//                         Expanded(
//                             child: CustomHalfContainer(
//                           image: "assets/icons_home/food.png",
//                           title: "Vegan",
//                           imageRight: false,
//                         )),
//                         SizedBox(
//                           width: 5.0,
//                         ),
//                         Expanded(
//                             child: CustomHalfContainer(
//                           image: "assets/icons_home/bread.png",
//                           title: "Low carb",
//                           imageRight: true,
//                         )),
//                       ],
//                     ),
