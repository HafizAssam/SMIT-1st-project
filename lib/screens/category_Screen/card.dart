import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/screens/Item_Category/item_category.dart';
import 'package:flutter/material.dart';

class CategryCards extends StatelessWidget {
  final String itemNameText;
  final String itemImage;

  const CategryCards({
    super.key,
    required this.itemNameText,
    required this.itemImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ItemCategory();
        }));
      },
      child: Column(
        children: [
          Container(
            height: 170,
            width: 140,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: appColor.LightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 140,
                  height: 140,
                  child: Image.asset(itemImage),
                ),
                SizedBox(
                  height: 08,
                ),
                Text(
                  itemNameText,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
