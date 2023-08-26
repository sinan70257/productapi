class Product {
  String? productName;
  String? productPrice;

  Product({
    this.productName,
    this.productPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productName: json['product_name'] as String?,
        productPrice: json['product_price'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'product_name': productName,
        'product_price': productPrice,
      };
}
