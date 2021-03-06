import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/checkout_page/widgets/order_list_item_card.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  var _scrollController = ScrollController();
  var _popupFab = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 230)
        setState(() => _popupFab = true);
      else
        setState(() => _popupFab = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: (_popupFab == true)
            ? Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: grey_dark.withOpacity(.1),
                        blurRadius: 10.0,
                        spreadRadius: 6.0,
                      )
                    ],
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    // Payment method selection
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: grey_dark.withOpacity(.15),
                          ),
                          padding: EdgeInsets.all(13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //
                              // Icon +Text Payment Method
                              Row(
                                children: [
                                  //
                                  // Icon Wallet
                                  Icon(
                                    Icons.credit_card,
                                    color: main_color,
                                  ),
                                  //
                                  // Spacer
                                  SizedBox(
                                    width: 8,
                                  ),
                                  //
                                  // Text Payment method
                                  Text(
                                    "payment method",
                                    style: text_size_regular.copyWith(
                                      color: grey_dark,
                                    ),
                                  )
                                ],
                              ),
                              //
                              // Icon DropDown
                              Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 28,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //
                    // Button Confirm
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: main_color,
                        ),
                        onPressed: () {},
                        child: Text("Confirm Order"),
                      ),
                    )
                  ],
                ),
              )
            : Container(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Text(
            "Dapur Mama Sehat Indoensia 22",
            style: text_size_regular.copyWith(fontWeight: fontWeight_bold),
          ),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                // Deliver to - Section
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Deliver to",
                    style: text_size_regular.copyWith(
                      fontWeight: fontWeight_bold,
                      color: grey_dark,
                    ),
                  ),
                ),
                //
                // Nama Anak Penerima
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      // 
                      // Icon person
                      Icon(
                        Icons.person,
                        color: main_color,
                      ),
                      // 
                      // Spacer
                      SizedBox(
                        width: 20,
                      ),
                      // 
                      // Nama peneirma
                      Text("Baby Yoda Number Seven Seven"),
                    ],
                  ),
                ),
                //
                // Alamat Anak Penerima
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: grey_dark.withOpacity(.15),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: 75,
                          width: 75,
                          child: Image.network(
                            "https://d32ogoqmya1dw8.cloudfront.net/images/sp/library/google_earth/google_maps_hello_world.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                            padding: EdgeInsets.only(left: 8),
                            height: 75,
                            child: Column(
                              children: [
                                //
                                // judul alamat
                                Text(
                                  "Jl. Pancasila No.2, RT 04/RW 01, Kecamatan Sehat, Kabupaten Kuat.",
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  style: text_size_regular,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                //
                                // Keterangan alamat
                                Text(
                                  "Depan gang kecil disebelah kiri kuburan jeruk purut",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: text_size_small.copyWith(
                                    color: grey_dark,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                //
                // Button Pin on the map
                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Ink(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: grey_dark.withOpacity(.7),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: Center(
                          child: Text(
                        "Change Location",
                        style: text_size_small.copyWith(
                          color: white,
                          fontWeight: fontWeight_bold,
                        ),
                      )),
                    ),
                  ),
                ),
                //
                //
                //
                // Food Basker
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Food Basket",
                    style: text_size_regular.copyWith(
                      fontWeight: fontWeight_bold,
                      color: grey_dark,
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          OrderListItemCard(),
                          //
                          // Separator item
                          Container(
                            margin: EdgeInsets.only(bottom: 8),
                            height: 1,
                            color: grey_dark.withOpacity(.4),
                          ),
                        ],
                      );
                    }),
                //
                //
                //
                // Summary total section
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Summary",
                    style: text_size_regular.copyWith(
                      fontWeight: fontWeight_bold,
                      color: grey_dark,
                    ),
                  ),
                ),
                //
                // Details summary
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Item total"),
                          Text(
                            "Rp. 2000",
                            style: text_size_regular.copyWith(
                                color: main_color, fontWeight: fontWeight_bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Fee"),
                          Text(
                            "Rp. 0",
                            style: text_size_regular.copyWith(
                                color: main_color, fontWeight: fontWeight_bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 1,
                        color: grey_dark.withOpacity(.4),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: text_size_medium.copyWith(
                              fontWeight: fontWeight_bold,
                            ),
                          ),
                          Text(
                            "Rp. 2000 ,-",
                            style: text_size_medium.copyWith(
                              fontWeight: fontWeight_bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
