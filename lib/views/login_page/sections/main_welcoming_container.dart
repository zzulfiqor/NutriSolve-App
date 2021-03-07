import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/enum/welcoming_page_state_enum.dart';
import 'package:nutrisolve_app/controllers/welcoming_page_controller.dart';
import 'package:nutrisolve_app/views/login_page/sections/sub_section/main_container_login.dart';
import 'sub_section/main_container_signup.dart';
import 'sub_section/main_container_welcoming.dart';

class MainWelcomingContainer extends StatelessWidget {
  var welcomingController = Get.put(WelcomingPageController());

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Obx(
      () => AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: (welcomingController.welcoming_page_state ==
                welcomingPageState.initial_state)
            ? screensize.height * 0.36
            : (welcomingController.welcoming_page_state ==
                    welcomingPageState.login_state)
                ? screensize.height * 0.55
                : screensize.height * 0.7,
        width: screensize.width,
        child: Container(
          padding: EdgeInsets.only(
            top: 30,
            bottom: 40,
            right: 20,
            left: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),

          //
          // child
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 100),
            child: (welcomingController.welcoming_page_state ==
                    welcomingPageState.initial_state)
                ? MainContainerWelcoming(
                    screensize: screensize,
                    key: ValueKey(welcomingController.welcoming_page_state),
                  )
                : (welcomingController.welcoming_page_state ==
                        welcomingPageState.login_state)
                    ? MainContainerLogin(
                        screensize: screensize,
                        key: ValueKey(welcomingController.welcoming_page_state),
                      )
                    : MainContainerSignup(
                        screensize: screensize,
                        key: ValueKey(welcomingController.welcoming_page_state),
                      ),
          ),
        ),
      ),
    );
  }
}
