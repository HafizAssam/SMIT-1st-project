import 'package:figma_app1/bottom_navigation_bar.dart';
import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/custom_widget/CustomButton.dart';
import 'package:figma_app1/data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 1,
                  color: appColor.lemonyellow,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Image.asset(AppImages.hashTake),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back_ios),
                                ),
                                Text(
                                  'Shopping Cart (${cartItem.length})',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 00,
                            right: 00,
                            child: Column(
                              children: [
                                Text(
                                  'OFF',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "50%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Image.asset(AppImages.)
                        ],
                      ),
                    ],
                  )),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: cartItem.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: appColor.peach,
                        leading: Image.asset(AppImages.ImageIcon),
                        title: Text(cartItem[index]["item"]),
                        subtitle: Text(cartItem[index]["price"].toString()),
                      );
                    }),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: appColor.LightGrey,
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.25,
                // color: appColor.LightGrey,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 25,
                    left: 25,
                    top: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub Total"),
                          Text(
                            "23 Rs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery"),
                          Text(
                            "20 Rs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(" Total"),
                          Text(
                            "100 Rs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        child: Custombutton(
                            onpressed: () {},
                            buttontextFontSize: 20,
                            buttonText: "proceed to checkout",
                            buttonColor: appColor.themColor,
                            buttonTextColor: appColor.Whitegrey),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
