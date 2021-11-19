import 'package:flutter/material.dart';
import 'package:food_at/view/cart/cart_view.dart';
import 'package:food_at/view/checkout/checkout_view.dart';
import 'package:food_at/view/favorite/favorite_view.dart';
import 'package:food_at/view/home/home_view.dart';
import 'package:food_at/view/search/search_view.dart';
import 'package:food_at/view/setting/setting_view.dart';
import 'package:food_at/view_model/bottom_bar_view_model.dart';
import 'package:food_at/view_model/provider/locale_provider.dart';
import 'package:food_at/widgets/custom_navigation_bar.dart';
import 'package:provider/provider.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _selectedItem = 0;

  final BottomBarViewModel _bottomBarViewModel = BottomBarViewModel();
  List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    final locale = Provider.of<LocaleProvider>(context);
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await navigatorKeys[_selectedItem].currentState!.maybePop();
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: [
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
            _buildOffstageNavigator(4),
          ],
        ),
        bottomNavigationBar: locale.locale == const Locale("en")
            ? Directionality(
                textDirection: TextDirection.ltr,
                child: CustomBottomNavigationBar(
                  iconList: _bottomBarViewModel.imageList,
                  iconListActive: _bottomBarViewModel.imageListActive,
                  onChange: (val) {
                    setState(() {
                      _selectedItem = val;
                    });
                  },
                  defaultSelectedIndex: 0,
                ),
              )
            : Directionality(
                textDirection: TextDirection.ltr,
                child: CustomBottomNavigationBar(
                  iconList: _bottomBarViewModel.imageList,
                  iconListActive: _bottomBarViewModel.imageListActive,
                  onChange: (val) {
                    setState(() {
                      _selectedItem = val;
                    });
                  },
                  defaultSelectedIndex: 0,
                ),
              ),
      ),
    );
  }

  void _next() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const CheckOutView()));
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          const HomeView(),
          const SearchView(),
          CartView(
            onTap: _next,
          ),
          const FavoriteView(),
          const SettingView(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedItem != index,
      child: Navigator(
        key: navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }
}
