import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productapi/controller/cart_controller.dart';
import 'package:productapi/view/cart_screeen/cart_screen.dart';

AppBar appBar() {
  final CartController controller = Get.put(CartController());
  return AppBar(
    title: const Text("Prodcut Store"),
    actions: [
      Container(
        margin: const EdgeInsets.only(right: 20),
        child: InkWell(
          onTap: () {
            Get.to(CartScreen());
          },
          child: Obx(
            () => SizedBox(
              child: Row(
                children: [
                  const Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(controller.cartList.length.toString()),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ],
  );
}
