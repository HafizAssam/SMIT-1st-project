import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/custom_widget/cartCount.dart';
import 'package:figma_app1/data.dart';
import 'package:figma_app1/screens/Favourite_screen/fav_card.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: appColor.themColor,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hey,Assam",
                          style: TextStyle(
                              color: appColor.Whitegrey, fontSize: 25),
                        ),
                        CartCount(
                          bagimage: AppImages.bag,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Your",
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
                          "Favorite  Item",
                          style: TextStyle(
                              color: appColor.Whitegrey,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: favList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return FavCards(itemNameText: favList[index]['item']);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
