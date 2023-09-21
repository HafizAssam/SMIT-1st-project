import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/screens/cart_Screen/Cart_Screen.dart';
import 'package:figma_app1/screens/switch_Screen/switch_Screen.dart';
import 'package:flutter/material.dart';

import 'screens/Favourite_screen/favourite_screen.dart';
import 'screens/Home_Screen/home_screen.dart';
import 'screens/category_Screen/category_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List ScreenBar = [
  //   HomeScreen(),
  //   CategryScreen(),
  //   FavouriteScreen(),
  // ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: selectedindex,
          color: appColor.themColor,
          backgroundColor: Colors.transparent,
          height: 50,
          items: [
            Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.category_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.more_horiz_sharp,
              size: 30,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            selectedindex = index;

            setState(() {});
          },
        ),
        body: getSelectedWidget(index: selectedindex));
  }
}

Widget? getSelectedWidget({required int index}) {
  Widget? widget;
  switch (index) {
    case 0:
      widget = HomeScreen();
      break;
    case 1:
      widget = CategryScreen();
      break;
    case 2:
      widget = FavouriteScreen();
      break;
    default:
  }
  return widget;
}
