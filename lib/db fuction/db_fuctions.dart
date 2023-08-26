import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflite/sqflite.dart';

late Database _db;
Future<void> initDatabase() async {
  _db = await openDatabase(
    "product.db",
    version: 1,
    onCreate: (db, version) async {
      await db.execute("CREATE TABLE product(name TEXT, price TEXT)");
    },
  );
  log("initialized");
}

Future<List<Map<String, dynamic>>> getProduct() async {
  final result = _db.rawQuery("SELECT * FROM product");
  return result;
}

Future<void> addToCart(String name, String price) async {
  await _db
      .rawInsert("INSERT INTO product(name, price) VALUES(?,?)", [name, price]);
  log("product added");
}
