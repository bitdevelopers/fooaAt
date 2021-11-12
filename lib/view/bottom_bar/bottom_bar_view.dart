import 'package:flutter/material.dart';
import 'package:food_at/view/home/home_view.dart';
import 'package:food_at/widgets/custom_navigation_bar.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _selectedItem = 0;

  List<Widget> _pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Image.asset(
            "assets/images/icons/home.png",
            width: 40,
            height: 40,
            fit: BoxFit.fitHeight,
          ),
        ],
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
