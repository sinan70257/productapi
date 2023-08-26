import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productapi/controller/home_controller.dart';
import 'package:productapi/view/home_screen/widgets/appbar.dart';
import 'package:productapi/view/home_screen/widgets/product_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Obx(
        () => controller.productList.isNotEmpty
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return productTile(controller.productList[index].productName!,
                      controller.productList[index].productPrice!);
                },
                itemCount: controller.productList.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
