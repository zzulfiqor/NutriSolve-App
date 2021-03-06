import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonBackgroundColor;
  final Color buttonSplashColor;
  final Color buttonTextColor;
  final Function onTap;
  final Image buttonLeadingImage;

  const MyButton(
      {@required this.buttonText,
      this.buttonBackgroundColor,
      this.buttonSplashColor,
      this.buttonTextColor,
      @required this.onTap,
      this.buttonLeadingImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: ElevatedButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 27,
                child: (buttonLeadingImage == null)
                    ? Text("")
                    : buttonLeadingImage,
              ),
              Text(
                buttonText,
                style: text_size_regular.copyWith(
                  fontWeight: fontWeight_medium,
                  color: (buttonTextColor == null)
                      ? Colors.black.withOpacity(.7)
                      : buttonTextColor,
                ),
              ),
              Text("      "),
            ],
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(133, 50),
            elevation: 0,
            shadowColor: Colors.black.withOpacity(0.2),
            primary: (buttonBackgroundColor == null)
                ? Colors.grey.withOpacity(.1)
                : buttonBackgroundColor,
            onPrimary:
                (buttonSplashColor == null) ? Colors.white : buttonSplashColor,
          ),
        ),
      ),
    );
  }
}
