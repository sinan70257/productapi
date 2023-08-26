import 'package:get/get.dart';
import 'package:productapi/db%20fuction/db_fuctions.dart';
import 'package:productapi/model/product/product.model.dart';
import 'package:productapi/services/api_service.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getdata();
    getProduct();

    super.onInit();
  }

  FetchApi fetchapi = FetchApi();
  RxList<Product> productList = <Product>[].obs;
  void getdata() async {
    final result = await fetchapi.fethProduct();
    productList.assignAll(result);
  }
}
