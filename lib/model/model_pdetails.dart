// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'dart:convert';

ProductDetails productDetailsFromJson(String str) => ProductDetails.fromJson(json.decode(str));

String productDetailsToJson(ProductDetails data) => json.encode(data.toJson());

class ProductDetails {
    ProductDetails({
        this.productName,
        this.description,
        this.price,
        this.size,
        this.image,
    });

    String? productName;
    String? description;
    int? price;
    int? size;
    String? image;

    factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
        productName: json["productName"],
        description: json["description"],
        price: json["price"],
        size: json["size"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "productName": productName,
        "description": description,
        "price": price,
        "size": size,
        "image": image,
    };
}
