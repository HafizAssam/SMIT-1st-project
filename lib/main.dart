import 'package:figma_app1/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'screens/Home_Screen/home_screen.dart';
import 'screens/switch_Screen/switch_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 

      // BottomNavBar(),
      // FavouriteScreen(),
      SplashScreen(),

      // CategryScreen(),
    );
  }
}
