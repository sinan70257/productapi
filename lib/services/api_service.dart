import 'dart:convert';
import 'dart:developer';

import 'package:productapi/model/product/product.model.dart';
import 'package:http/http.dart' as http;

class FetchApi {
  Future<List<Product>> fethProduct() async {
    log("Api called");
    final response = await http.get(Uri.parse(
        "https://www.modern.resto.qa/api/product?store_id-1043&page_first_result=08result_per_page=20"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final productData = data as List<dynamic>;
      return productData.map((e) => Product.fromJson(e)).toList();
    } else {
      print("erro while fetching data");
      return [];
    }
  }
}
