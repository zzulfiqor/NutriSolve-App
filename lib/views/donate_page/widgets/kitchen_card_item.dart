import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/foodlist_page/foodlist_page.dart';

class KitchenCardItem extends StatelessWidget {
  final int index;

  const KitchenCardItem({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1,
          color: (index != 0) ? grey_dark.withOpacity(.5) : white,
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          elevation: 0,
          child: Material(
            child: InkWell(
              onTap: () {
                Get.to(() => FoodlistPage());
              },
              splashColor: grey_dark.withOpacity(0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.health.harvard.edu/media/content/images/cr/8c38e37d-e8b9-48dd-a9a8-65083a6115e5.jpg"),
                          fit: BoxFit.cover),
                    ),
                    width: 85,
                    height: 85,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Nama Restoran
                        Text(
                          "Dapur Sehat Mama Indonesia 22",
                          style: text_size_regular.copyWith(
                              fontWeight: fontWeight_semibold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        // kategori makanan
                        Text(
                          "Bubur, Sup, Salad",
                          style: text_size_small.copyWith(color: grey_dark),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        //
                        // Spacer 3px
                        SizedBox(
                          height: 3,
                        ),
                        //
                        // lokasi dan jarak
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 18,
                                  color: grey_dark,
                                ),
                                Text(
                                  "Margoyoso, Pati",
                                  style: text_size_small.copyWith(
                                    color: grey_dark,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        //
                        // Spacer 3px
                        SizedBox(
                          height: 3,
                        ),
                        //
                        // Jarak waktu
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 16,
                              color: grey_dark,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "27 Min from beneficiary's house",
                              style: text_size_small.copyWith(color: grey_dark),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
