import 'package:figma_app1/bottom_navigation_bar.dart';
import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/custom_widget/cards.dart';
import 'package:figma_app1/custom_widget/cartCount.dart';
import 'package:figma_app1/data.dart';
import 'package:figma_app1/screens/category_Screen/category_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatefulWidget {
  const ItemCategory({super.key});

  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Home();
                          }));
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    Text("assam"
                        // category[index]["item"]
                        ),
                  ],
                ),
                CartCount(
                  bagimage: AppImages.BlackCartBag,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: Fishes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // crossAxisSpacing: 5,
                      mainAxisSpacing: 10,
                      childAspectRatio: 4 / 5),
                  itemBuilder: (context, index) {
                    return GlobalCards(
                      priceText: Fishes[index]["price"].toString(),
                      itemName: Fishes[index]["item"],
                      iconColor: Fishes[index]['isFav'] == true
                          ? Colors.red
                          : Colors.grey,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
