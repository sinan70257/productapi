import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productapi/controller/cart_controller.dart';
import 'package:productapi/view/home_screen/widgets/product_tile.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Obx(() => ListView.builder(
            itemBuilder: (context, index) => productTile(
                controller.cartList[index]["name"],
                controller.cartList[index]["price"]),
            itemCount: controller.cartList.length,
          )),
    );
  }
}
