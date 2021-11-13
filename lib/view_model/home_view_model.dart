import 'package:food_at/model/slider_image_model.dart';

class HomeViewModel {
  late int current = 0;
  // ignore: prefer_final_fields
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
