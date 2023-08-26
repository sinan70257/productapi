import 'dart:developer';

import 'package:get/get.dart';
import 'package:productapi/db%20fuction/db_fuctions.dart';

class CartController extends GetxController {
  RxList<Map<String, dynamic>> cartList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    fetchCart();

    super.onInit();
  }

  Future<void> fetchCart() async {
    final data = await getProduct();
    cartList.assignAll(data);
    log(cartList.toString());
  }
}
