import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              color: appColor.Yellow,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: cartItem.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.green,
                    leading: Image.asset(AppImages.ImageIcon),
                    title: Text(cartItem[index]["item"]),
                    subtitle: Text(cartItem[index]["price"].toString()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
