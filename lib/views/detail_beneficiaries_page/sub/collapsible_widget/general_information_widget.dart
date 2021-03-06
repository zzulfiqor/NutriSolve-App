import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';

class GeneralInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(children: [
            Container(
              child: Text(
                "Weight",
                style: text_size_regular.copyWith(color: grey_dark),
              ),
            ),
            Container(
              child: Text(
                ":",
                style: text_size_regular.copyWith(color: grey_dark),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "24 Kg",
                  style: text_size_regular.copyWith(color: grey_dark),
                ),
              ],
            )
          ]),
          TableRow(children: [
            Container(
              child: Text(
                "Age",
                style: text_size_regular.copyWith(color: grey_dark),
              ),
            ),
            Container(
              child: Text(
                ":",
                style: text_size_regular.copyWith(color: grey_dark),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "2 y.o",
                  style: text_size_regular.copyWith(color: grey_dark),
                ),
              ],
            )
          ]),
          TableRow(children: [
            Container(
              child: Text(
                "Allergies",
                style: text_size_regular.copyWith(color: grey_dark),
              ),
            ),
            Container(
              child: Text(
                ":",
                style: text_size_regular.copyWith(color: grey_dark),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Carrot, Shrimp",
                  style: text_size_regular.copyWith(color: grey_dark),
                ),
              ],
            )
          ]),
          TableRow(children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
          ])
        ],
      ),
    );
  }
}
