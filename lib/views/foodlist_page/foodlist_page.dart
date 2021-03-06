import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/controllers/food_order_controller.dart';
import 'package:nutrisolve_app/views/checkout_page/checkout_page.dart';
import 'package:nutrisolve_app/views/foodlist_page/section/food_list_section.dart';
import 'package:nutrisolve_app/views/foodlist_page/section/restaurant_info_section.dart';

class FoodlistPage extends StatefulWidget {
  @override
  _FoodlistPageState createState() => _FoodlistPageState();
}

class _FoodlistPageState extends State<FoodlistPage> {
  var _controller = ScrollController();
  ScrollPhysics _physics = ClampingScrollPhysics();

  Widget _title() {
    if (_controller.hasClients) {
      if (_controller.position.pixels >= 240) {
        return Text(
          "Dapur Mama Sehat Indonesia 22",
          style: text_size_regular.copyWith(fontWeight: fontWeight_semibold),
        );
      } else {
        return Text("");
      }
    }
  }

  Color _color() {
    if (_controller.hasClients) {
      if (_controller.position.pixels >= 240) {
        return main_color;
      } else {
        return Colors.transparent;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels >= 54)
        setState(() => _physics = BouncingScrollPhysics());
      else
        setState(() => _physics = ClampingScrollPhysics());
    });
  }

  @override
  Widget build(BuildContext context) {
    final FoodOrderController c = Get.put(FoodOrderController());

    return Scaffold(
      floatingActionButton: Obx(
        () => Container(
          child: (c.isBasketEmpty == true)
              ? Container()
              : SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: main_color,
                    ),
                    onPressed: () {
                      Get.to(() => CheckoutPage());
                    },
                    child: Text("Checkout 1 Item (Rp. 5000)"),
                  ),
                ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: _title(),
        elevation: 0,
        backgroundColor: _color(),
      ),
      body: SingleChildScrollView(
        physics: _physics,
        controller: _controller,
        child: Column(
          children: [
            //
            // Restaurant Section Info
            RestaurantInfoSection(),
            //
            // Foodlist Submenu
            FoodListSection(),
          ],
        ),
      ),
    );
  }
}
