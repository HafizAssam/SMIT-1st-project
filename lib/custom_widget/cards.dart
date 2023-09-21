import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/custom_widget/cartCount.dart';
import 'package:figma_app1/data.dart';
import 'package:flutter/material.dart';

class GlobalCards extends StatelessWidget {
  final String priceText;
  final String itemName;
  final Color iconColor;
  final void Function()? addFunction;
  const GlobalCards({
    super.key,
    required this.priceText,
    required this.itemName,
    required this.iconColor,
    required this.addFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          width: 140,
          margin: EdgeInsets.only(right: 10),
          // color: Colors.amber,
          decoration: BoxDecoration(
            color: appColor.LightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset(AppImages.ImageIcon),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    priceText,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Rs",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                itemName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: addFunction,
                      icon: Icon(
                        Icons.favorite,
                        color: iconColor,
                      )),
                  InkWell(
                    onTap: addFunction,
                    // cartItem.add(Checken[index]);

                    child: CircleAvatar(
                        radius: 12,
                        backgroundColor: appColor.themColor,
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 30,
        )
      ],
    );
    // SizedBox(
    //   width: 30,
    // );
  }
}
