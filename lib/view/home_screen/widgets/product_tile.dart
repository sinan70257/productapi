import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productapi/controller/cart_controller.dart';
import 'package:productapi/db%20fuction/db_fuctions.dart';

Container productTile(String name, String price) {
  final CartController cartController = Get.put(CartController());
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    margin: const EdgeInsets.symmetric(vertical: 5),
    height: 60,
    decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 200,
          child: Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 80,
          child: Text("₹ $price"),
          margin: EdgeInsets.only(right: 22),
        ),
        IconButton(
            onPressed: () {
              addToCart(name, price);
              getProduct();
              cartController.fetchCart();
            },
            icon: Icon(Icons.add))
      ],
    ),
  );
}
