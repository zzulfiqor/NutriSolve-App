import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/home_page/beneficiary_item_widget.dart';
import 'package:nutrisolve_app/views/notification_page/notification_page.dart';
import 'package:nutrisolve_app/views/profile_page/profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          //
          // base background
          Container(
            color: main_color,
            height: 145,
            child: Padding(
              padding: padding_dashboard,
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    // avatar and Name
                    Ink(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => ProfilePage());
                            },
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: grey_dark,
                              backgroundImage: NetworkImage(
                                  'https://cdn3.f-cdn.com/contestentries/1376995/30494909/5b566bc71d308_thumb900.jpg'),
                            ),
                          ),
                          Padding(
                            padding: padding_row_element_left,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Morning,",
                                  style: text_size_small.copyWith(
                                    fontWeight: fontWeight_semibold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("The Administrator",
                                    style: text_size_regular.copyWith(
                                      fontWeight: fontWeight_medium,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //
                    // notification button
                    IconButton(
                        icon: Icon(
                          Icons.notifications_rounded,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          print("Tapped Notification");
                          Get.to(() => NotificationPage());
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
            margin: EdgeInsets.only(top: 120),
            height: MediaQuery.of(context).size.height - 110,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: padding_default_all,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Beneficiaries",
                    style: text_size_big.copyWith(fontWeight: fontWeight_bold),
                  ),
                  Text("List of children who need our help",
                      style: text_size_regular.copyWith(
                        fontWeight: fontWeight_light,
                      )),
                  SizedBox(height: 10),

                  // List Of Beneciaries
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      physics: BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: (index == 0)
                              ? EdgeInsets.only(top: 0)
                              : EdgeInsets.only(top: 10),
                          child: GestureDetector(
                              onTap: () {
                                print(index.toString());
                              },
                              child: BeneficiaryItemWidget()),
                        );
                      },
                      shrinkWrap: true,
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
