import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/foodlist_page/widgets/food_card_item.dart';
import 'package:nutrisolve_app/views/foodlist_page/widgets/modal_bottom_sheet_food_item.dart';

class FoodListSection extends StatelessWidget {
  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          // Nama kitchen
          Text(
            "Dapur Mama Sehat Indonesia 22",
            style: text_size_biggest.copyWith(
              fontWeight: fontWeight_semibold,
              height: 1.3,
            ),
          ),
          //
          //  Spacer 5px
          SizedBox(
            height: 5,
          ),
          //
          // Kategori Makanan
          Text(
            "Bakso, Bubur",
            style: text_size_small.copyWith(
              fontWeight: fontWeight_regular,
              color: grey_dark,
            ),
          ),
          //
          //  Spacer 8px
          SizedBox(
            height: 8,
          ),
          //
          // Row Location and Distance in time
          Row(
            children: [
              //
              // Container + Row of Location
              Container(
                decoration: BoxDecoration(
                    color: grey_dark.withOpacity(.15),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: main_color,
                      size: 16,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "1.2 km",
                      style: text_size_small.copyWith(
                        color: main_color,
                      ),
                    )
                  ],
                ),
              ),
              //
              // Spacer width 5px
              SizedBox(
                width: 5,
              ),
              //
              // Container + Row of Distance
              Container(
                decoration: BoxDecoration(
                    color: grey_dark.withOpacity(.15),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                child: Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: main_color,
                      size: 16,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "15 min from beneficiary's house",
                      style: text_size_small.copyWith(
                        color: main_color,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          //
          // Border 1px + margin vertical 10px for divider
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
            ),
            height: 1,
            color: grey_dark.withOpacity(.3),
          ),
          //
          //
          // Section Food List
          //
          // Text Section title
          Text("Healthy food list",
              style: text_size_medium.copyWith(
                fontWeight: fontWeight_semibold,
              )),
          //
          // Spacer 8px
          SizedBox(
            height: 8,
          ),
          //
          // Test
          GridView.builder(
              padding: EdgeInsets.all(0),
              itemCount: 8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 20,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      print("Item ke-${index}");
                      showMaterialModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          expand: false,
                          builder: (context) => ModalBottomSheetFoodItem());
                    },
                    child: FoodCardItem());
              }),
        ],
      ),
    );
  }
}
