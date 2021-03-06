import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/controllers/food_order_controller.dart';

class ModalBottomSheetFoodItem extends StatelessWidget {
  final FoodOrderController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.25,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            // Image, Title, Note, Button Count of Order
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                // Image of selected food
                Container(
                  padding: EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/01/Blog_Judul-Blog-58.jpg"),
                  ),
                ),
                //
                // Title of Selected Food
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Bubur Bayi Wortel dan Jagung",
                    style: text_size_big,
                  ),
                ),
                //
                // Text Field note for order
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: grey_dark.withOpacity(.15),
                    ),
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Note : without onion, not spicy, etc",
                          hintStyle: text_size_regular.copyWith(
                              color: grey_dark.withOpacity(.5))),
                    ),
                  ),
                ),
                //
                // Item quantity  counter
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //
                      // Button kurang
                      IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        color: main_color,
                        iconSize: 32,
                        onPressed: () {},
                      ),
                      //
                      // Item Count Text
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: Center(
                            child: Text(
                          "1",
                          style: text_size_big.copyWith(
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      //
                      // Button tambah
                      IconButton(
                        icon: Icon(Icons.add_circle_outline),
                        color: main_color,
                        iconSize: 32,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //
            // Button Add To Cart
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: main_color,
                    ),
                    onPressed: () {
                      c.addDummyItem();
                      Navigator.pop(context);
                    },
                    child: Text("Add To Food Basket"),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
