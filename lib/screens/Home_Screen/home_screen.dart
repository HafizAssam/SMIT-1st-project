import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/custom_widget/cards.dart';
import 'package:figma_app1/custom_widget/cartCount.dart';
import 'package:figma_app1/data.dart';
import 'package:figma_app1/screens/Favourite_screen/favourite_screen.dart';
import 'package:flutter/material.dart';

import '../category_Screen/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List bottomBar = [
  HomeScreen(),
  CategryScreen(),
  FavouriteScreen(),
];
int _selectedindex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: appColor.grey,
                            ),
                            fillColor: appColor.darkBlue,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.004,
                              horizontal:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            labelStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                            hintStyle: TextStyle(
                              color: appColor.grey,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                            hintText: 'Search product or store',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.08),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Image.asset(AppImages.BlueCircle),
              //     Image.asset(AppImages.YellowCircle),
              //     Image.asset(AppImages.SmallYellowCircle),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: appColor.Yellow,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "345 USD",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("your total savings")
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.43,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: appColor.peach,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "215 HRS",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("your time saved")
                            ],
                          ),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.43,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "  Fruits",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fruit.length,
                        itemBuilder: (context, index) {
                          return GlobalCards(
                            addFavItem: () {
                              if (fruit[index]['isFave'] == true) {
                                fruit[index]['isFave'] == false;
                                favList.remove(fruit[index]);
                                setState(() {});
                              } else {
                                fruit[index]['isFave'] == true;
                                favList.add(fruit[index]);
                                setState(() {});
                              }
                            },
                            addCartItem: () {
                              setState(() {
                                cartItem.add(fruit[index]);
                              });
                            },
                            priceText: fruit[index]['price'].toString(),
                            itemName: fruit[index]['item'],
                            iconColor: fruit[index]['isFav'] == true
                                ? Colors.red
                                : Colors.grey,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "  Karyana",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Karyana.length,
                        itemBuilder: (context, index) {
                          return GlobalCards(
                            addFavItem: () {
                              if (Fishes[index]['isFave'] == true) {
                                Karyana[index]['isFave'] == false;
                                favList.remove(Karyana[index]);
                                setState(() {});
                              } else {
                                Karyana[index]['isFave'] == true;
                                favList.add(Karyana[index]);
                                setState(() {});
                              }
                            },
                            addCartItem: () {
                              setState(() {
                                cartItem.add(Karyana[index]);
                              });
                            },
                            priceText: Karyana[index]['price'].toString(),
                            itemName: Karyana[index]['item'],
                            iconColor: Karyana[index]['isFav'] == true
                                ? Colors.red
                                : Colors.grey,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "  Vegetable",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: vegetabel.length,
                        itemBuilder: (context, index) {
                          return GlobalCards(
                            addFavItem: () {
                              if (vegetabel[index]['isFave'] == true) {
                                vegetabel[index]['isFave'] == false;
                                favList.remove(vegetabel[index]);
                                setState(() {});
                              } else {
                                vegetabel[index]['isFave'] == true;
                                favList.add(vegetabel[index]);
                                setState(() {});
                              }
                            },
                            addCartItem: () {
                              setState(() {
                                cartItem.add(vegetabel[index]);
                              });
                            },
                            priceText: vegetabel[index]['price'].toString(),
                            itemName: vegetabel[index]['item'],
                            iconColor: vegetabel[index]['isFav'] == true
                                ? Colors.red
                                : Colors.grey,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "  Meat",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Meat.length,
                        itemBuilder: (context, index) {
                          return GlobalCards(
                            addFavItem: () {
                              if (Meat[index]['isFave'] == true) {
                                Meat[index]['isFave'] == false;
                                favList.remove(Meat[index]);
                                setState(() {});
                              } else {
                                Meat[index]['isFave'] == true;
                                favList.add(Meat[index]);
                                setState(() {});
                              }
                            },
                            addCartItem: () {
                              setState(() {
                                cartItem.add(Meat[index]);
                              });
                            },
                            priceText: Meat[index]['price'].toString(),
                            itemName: Meat[index]['item'],
                            iconColor: Meat[index]['isFav'] == true
                                ? Colors.red
                                : Colors.grey,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "  Checken",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Checken.length,
                        itemBuilder: (context, index) {
                          return GlobalCards(
                            addFavItem: () {
                              if (Checken[index]['isFave'] == true) {
                                Checken[index]['isFave'] == false;
                                favList.remove(Checken[index]);
                                setState(() {});
                              } else {
                                Checken[index]['isFave'] == true;
                                favList.add(Checken[index]);
                                setState(() {});
                              }
                            },
                            addCartItem: () {
                              setState(() {
                                cartItem.add(Checken[index]);
                              });
                            },
                            priceText: Checken[index]['price'].toString(),
                            itemName: Checken[index]['item'],
                            iconColor: Checken[index]['isFav'] == true
                                ? Colors.red
                                : Colors.grey,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            "  Fishes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Checken.length,
                        itemBuilder: (context, index) {
                          return GlobalCards(
                            addCartItem: () {
                              setState(() {
                                cartItem.add(Fishes[index]);
                              });
                            },
                            addFavItem: () {
                              if (Fishes[index]['isFave'] == true) {
                                Fishes[index]['isFave'] == false;
                                favList.remove(Fishes[index]);
                                setState(() {});
                              } else {
                                Fishes[index]['isFave'] == true;
                                favList.add(Fishes[index]);
                                setState(() {});
                              }
                            },
                            priceText: Fishes[index]['price'].toString(),
                            itemName: Fishes[index]['item'],
                            iconColor: Fishes[index]['isFav'] == true
                                ? Colors.red
                                : Colors.grey,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
