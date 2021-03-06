import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';

class FoodCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        decoration: BoxDecoration(
          color: white,
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: grey_dark,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn-2.tstatic.net/belitung/foto/bank/images/bubur-ayam-bayam_20180820_050920.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Flexible(
              flex: 1,
              child: Ink(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width,
                color: white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bubur Bayi Wortel dan Jagung",
                      style: text_size_regular.copyWith(
                        color: Colors.black,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rp. 3000",
                      style: text_size_regular.copyWith(
                        color: Colors.black,
                        fontWeight: fontWeight_bold,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
