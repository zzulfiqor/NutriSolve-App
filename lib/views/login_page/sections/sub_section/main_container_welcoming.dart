import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/enum/welcoming_page_state_enum.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/controllers/welcoming_page_controller.dart';

class MainContainerWelcoming extends StatelessWidget {
  const MainContainerWelcoming({
    Key key,
    @required this.screensize,
  }) : super(key: key);

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    final WelcomingPageController c = Get.find();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //
        // Column Of Header
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to",
              style: text_size_header2.copyWith(
                height: 1.5,
              ),
            ),
            Text(
              "NutriSolve",
              style: text_size_header2.copyWith(
                  fontWeight: fontWeight_bold, color: main_color, height: 0.9),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              width: screensize.width * 0.65,
              child: Text(
                "Together we solve our nutrition problem",
                style: text_size_medium.copyWith(
                  color: grey_dark,
                ),
              ),
            ),
          ],
        ),

        //
        //
        // Chose will login or register
        Row(
          children: [
            //
            // Button Sign Up
            SizedBox(
              height: 50,
              width: screensize.width * 0.42,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: main_color,
                  onSurface: main_color,
                  side: BorderSide(width: 1, color: main_color),
                ),
                onPressed: () => {c.setWelcomingToSignupPageState()},
                child: Text(
                  "Sign Up",
                  style: text_size_regular.copyWith(
                    color: main_color,
                  ),
                ),
              ),
            ),
            //
            // Spacer
            SizedBox(
              width: screensize.width * 0.025,
            ),
            //
            // Button Login
            SizedBox(
              height: 50,
              width: screensize.width * 0.42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: main_color,
                ),
                onPressed: () => {
                  c.setWelcomingToLoginPageState(),
                },
                child: Text("Sign In"),
              ),
            ),
          ],
        )
      ],
    );
  }
}
