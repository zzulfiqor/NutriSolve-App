import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/enum/welcoming_page_state_enum.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/controllers/welcoming_page_controller.dart';
import 'package:nutrisolve_app/views/login_page/sections/main_welcoming_container.dart';

class LoginPage extends StatelessWidget {
  final WelcomingPageController c = Get.put(WelcomingPageController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (c.welcoming_page_state == welcomingPageState.initial_state) {
          Get.defaultDialog(
            title: "",
            titleStyle: text_size_small.copyWith(height: .1),
            radius: 10,
            content: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Do you really want to exit ?"),
            ),
            cancel: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: main_color,
                onSurface: main_color,
                side: BorderSide(width: 1, color: main_color),
              ),
              onPressed: () => Get.back(),
              child: Text("No"),
            ),
            confirm: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: main_color,
              ),
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text("Exit"),
            ),
          );
        } else if (c.welcoming_page_state == welcomingPageState.login_state) {
          c.setWelcomingToInitialPageState();
        } else {
          c.setWelcomingToInitialPageState();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            //
            // Base Background - Layer 0
            Container(
              decoration: BoxDecoration(
                color: main_color,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://previews.123rf.com/images/marilyna/marilyna1712/marilyna171200055/91459259-superfood-concept-for-healthy-eating-with-health-food-of-fruit-vegetables-grain-cereals-seeds-herbs-.jpg"),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  decoration: new BoxDecoration(color: Colors.transparent),
                ),
              ),
            ),
            //
            // Main Container - Layer 1
            Positioned(
              bottom: 0,
              child: MainWelcomingContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
