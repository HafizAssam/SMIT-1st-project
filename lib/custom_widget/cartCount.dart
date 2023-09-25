import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/data.dart';

import 'package:flutter/material.dart';

import '../constants/app_images.dart';
import '../screens/cart_Screen/ShoopingCart_Screen.dart';

class CartCount extends StatefulWidget {
  const CartCount({super.key});

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: ((context) {
            return CartScreen();
          })),
        );
      },
      child: Container(
        height: 30,
        width: 30,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              AppImages.bag,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 08,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: appColor.Yellow,
              child: Text(
                cartItem.length.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
