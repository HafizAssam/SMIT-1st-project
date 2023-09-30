import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/custom_widget/cards.dart';
import 'package:figma_app1/custom_widget/cartCount.dart';
import 'package:figma_app1/data.dart';
import 'package:figma_app1/screens/category_Screen/card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategryScreen extends StatelessWidget {
  const CategryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: appColor.themColor,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hey,Assam",
                      style: TextStyle(color: appColor.Whitegrey, fontSize: 25),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CartCount(
                          bagimage: AppImages.bag,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Shop",
                      style: TextStyle(
                        color: appColor.Whitegrey,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "By Category",
                      style: TextStyle(
                          color: appColor.Whitegrey,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: category.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return CategryCards(
                      itemImage: category[index]["image"],
                      itemNameText: category[index]["item"]);
                }),
          )
        ]),
      ),
    );
  }
}
