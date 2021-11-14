import 'package:flutter/material.dart';
import 'package:food_at/widgets/custom_app_bar.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text("Favorite"),
      ),
    );
  }
}
