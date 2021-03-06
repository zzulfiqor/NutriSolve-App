import 'package:get/get.dart';

class FoodOrderController extends GetxController {
  var isBasketEmpty = true.obs;

  void addDummyItem() {
    this.isBasketEmpty.value = !this.isBasketEmpty.value;
  }
}
