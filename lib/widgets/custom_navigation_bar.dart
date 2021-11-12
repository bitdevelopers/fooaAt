import 'package:flutter/material.dart';
import 'package:food_at/values/color.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int? defaultSelectedIndex;
  final Function(int)? onChange;
  final List<dynamic>? iconList;
  final List<dynamic>? iconListActive;

  const CustomBottomNavigationBar(
      {Key? key,
      this.defaultSelectedIndex = 0,
      this.iconList,
      this.onChange,
      this.iconListActive})
      : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<dynamic> _iconList = [];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex!;
    _iconList = widget.iconList!;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(dynamic icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange!(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: AppColor.greyShade100,
              ),
            ),
          ),
          height: 80,
          width: MediaQuery.of(context).size.width / _iconList.length,
          child:
              index == _selectedIndex ? widget.iconListActive![index] : icon),
    );
  }
}
