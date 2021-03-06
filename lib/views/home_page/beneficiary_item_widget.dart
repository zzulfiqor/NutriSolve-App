import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/detail_beneficiaries_page/detail_beneficiary_page.dart';

class BeneficiaryItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Get.to(() => DetailBeneficiaryPage());
        },
        focusColor: main_color_brighter.withOpacity(.1),
        splashColor: main_color.withOpacity(.00),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xffE2E2E2),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.indiewire.com/wp-content/uploads/2019/11/960x0-2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Ink(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Baby Yoda Number Seven",
                        style: text_size_medium.copyWith(
                            fontWeight: fontWeight_semibold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "663 of 1000 Meals",
                          style: text_size_regular,
                        ),
                        Text(
                          "62%",
                          style: text_size_regular.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: LinearProgressIndicator(
                        value: 62 / 100,
                        valueColor: AlwaysStoppedAnimation<Color>(main_color),
                        minHeight: 5,
                        backgroundColor: Colors.grey.withOpacity(.4),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("154 Donators"),
                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
