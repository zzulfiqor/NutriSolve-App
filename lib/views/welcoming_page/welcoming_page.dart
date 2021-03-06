import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/widgets/my_button.dart';
import 'package:nutrisolve_app/views/home_page/home_page.dart';

class WelcomingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                // height: 5,
                child: Image.asset("assets/images/logo_horizontal.png"),
              ),
              SizedBox(
                height: 50,
              ),
              MyButton(
                buttonText: "Sign In With Email",
                onTap: () {
                  Get.to(() => HomePage());
                  print("Custom Button Tapped");
                },
                buttonLeadingImage: Image.network(
                    "https://png.pngtree.com/png-vector/20190927/ourmid/pngtree-email-icon-png-image_1757854.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                buttonText: "Sign In With Google",
                onTap: () {
                  print("Custom Button Tapped");
                },
                buttonLeadingImage: Image.network(
                    "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png"),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                buttonText: "Sign In With Facebook",
                onTap: () {},
                buttonLeadingImage: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png"),
              )
            ],
          ),
        )),
      ),
    );
  }
}
