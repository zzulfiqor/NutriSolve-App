import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/donate_page/widgets/kitchen_card_item.dart';
import 'package:nutrisolve_app/views/foodlist_page/foodlist_page.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          // base background
          Ink(
            color: main_color,
            height: 125,
            child: Padding(
              padding: padding_dashboard,
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // avatar and Name
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),

                    // Page Title
                    Text(
                      "Send Me Food",
                      style: text_size_regular.copyWith(
                        color: white,
                        fontWeight: fontWeight_bold,
                      ),
                    ),
                    // notification
                    IconButton(
                        icon: Icon(
                          Icons.notifications_rounded,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("Tapped Notification");
                        })
                  ],
                ),
              ),
            ),
          ),

          // Main Area
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white),
            margin: EdgeInsets.only(top: 100),
            height: MediaQuery.of(context).size.height - 110,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: padding_default_all,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Kitchen",
                    style:
                        text_size_big.copyWith(fontWeight: fontWeight_semibold),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => KitchenCardItem(
                        index: index,
                      ),
                      itemCount: 8,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
