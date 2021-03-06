import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';

class OrderListItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 110,
      child: Row(
        children: [
          //
          // Item basket Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/01/Blog_Judul-Blog-58.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          //
          // Item Basket Name, total rupiah per item
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bubur bayi wortel dan jagung jagung",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  //
                  // Note order
                  Text(
                    "note : tidak pedas",
                    style: text_size_small.copyWith(color: grey_dark),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp. 5000 ,-",
                        style: text_size_regular.copyWith(
                          color: main_color,
                          fontWeight: fontWeight_bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          //
                          // Icon Minus
                          Material(
                            child: InkWell(
                              onTap: () {},
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: grey_dark.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 2),
                                width: 30,
                                child: Center(
                                    child: Text(
                                  "-",
                                  style: text_size_regular.copyWith(
                                      color: main_color),
                                )),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "1",
                              style: text_size_regular.copyWith(
                                fontWeight: fontWeight_bold,
                              ),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 8),
                          ),
                          //
                          // Icon Plus
                          Material(
                            child: InkWell(
                              onTap: () {},
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: grey_dark.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 2),
                                width: 30,
                                child: Center(
                                    child: Text(
                                  "+",
                                  style: text_size_regular.copyWith(
                                      color: main_color),
                                )),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
