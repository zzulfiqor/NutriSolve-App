import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/controllers/welcoming_page_controller.dart';
import 'package:nutrisolve_app/views/home_page/home_page.dart';

class MainContainerLogin extends StatelessWidget {
  const MainContainerLogin({
    Key key,
    @required this.screensize,
  }) : super(key: key);

  final Size screensize;
  @override
  Widget build(BuildContext context) {
    final WelcomingPageController c = Get.find();

    return Container(
      width: screensize.width,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        child: Container(
          height: screensize.height * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              // Button Exit + Title
              Row(
                children: [
                  //
                  // Button Back
                  IconButton(
                    splashColor: main_color,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      c.setWelcomingToInitialPageState();
                    },
                  ),
                  //
                  // Title
                  Text(
                    "Sign in",
                    style: text_size_big.copyWith(
                      fontWeight: fontWeight_bold,
                    ),
                  ),
                ],
              ),
              //
              // Text Field Email and Password
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    //
                    // Email Form Field
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: white,
                          border: Border.all(
                            width: 1,
                            color: main_color.withOpacity(.5),
                          )),
                      child: TextFormField(
                        cursorColor: main_color,
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: text_size_regular,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //
                    // Spacer
                    SizedBox(
                      height: 10,
                    ),
                    //
                    // Password Form Field
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: white,
                          border: Border.all(
                            width: 1,
                            color: main_color.withOpacity(.5),
                          )),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: main_color,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: text_size_regular,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //
                    // Spacer
                    SizedBox(
                      height: 25,
                    ),
                    //
                    // Row of "Or" Divider
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screensize.width * 0.3,
                          height: 1,
                          color: grey_dark.withOpacity(.5),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Or",
                            style: text_size_regular.copyWith(
                              color: grey_dark,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: screensize.width * 0.3,
                          height: 1,
                          color: grey_dark.withOpacity(.5),
                        ),
                      ],
                    ),
                    //
                    // Spacer
                    SizedBox(
                      height: 20,
                    ),
                    //
                    // Row Of Socials Login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //
                        //  Button Google
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Material(
                            elevation: 1,
                            child: InkWell(
                              onTap: () {},
                              splashColor: grey_dark.withOpacity(.2),
                              child: Ink(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: grey_dark.withOpacity(.1),
                                ),
                                child: Transform.scale(
                                  scale: 0.5,
                                  child: Image.asset(
                                    "assets/images/google_logo.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //
                        // Spacer
                        SizedBox(
                          width: screensize.width * 0.05,
                        ),
                        //
                        //  Button Google
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Material(
                            elevation: 1,
                            child: InkWell(
                              onTap: () {},
                              splashColor: grey_dark.withOpacity(.2),
                              child: Ink(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: grey_dark.withOpacity(.1),
                                ),
                                child: Transform.scale(
                                  scale: 0.6,
                                  child: Image.asset(
                                    "assets/images/facebook_logo.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //
              // Button Sign In
              SizedBox(
                height: 50,
                width: screensize.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: main_color,
                  ),
                  onPressed: () {
                    Get.defaultDialog(
                      barrierDismissible: false,
                      title: "",
                      titleStyle: text_size_small,
                      content: Container(
                        child: Column(
                          children: [
                            //
                            // Lottie Animation Success
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: CircularProgressIndicator()),
                            //
                            // Spacer
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    );
                    Future.delayed(Duration(seconds: 2), () {
                      Get.back();
                      Get.to(() => HomePage());
                    });
                  },
                  child: Text("Sign In"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
