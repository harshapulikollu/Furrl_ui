// To parse this JSON data, do
//
//     final deal = dealFromJson(jsonString);

import 'dart:convert';

class Deal {
  final String title;
  final String subtitle;
  final String ogPrice;
  final String price;
  final String dp;
  final String discountPercentage;
  final String imageUrl;

  Deal({
    required this.title,
    required this.subtitle,
    required this.ogPrice,
    required this.price,
    required this.dp,
    required this.discountPercentage,
    required this.imageUrl,
  });

  Deal copyWith({
    String? title,
    String? subtitle,
    String? ogPrice,
    String? price,
    String? dp,
    String? discountPercentage,
    String? imageUrl,
  }) =>
      Deal(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        ogPrice: ogPrice ?? this.ogPrice,
        price: price ?? this.price,
        dp: dp ?? this.dp,
        discountPercentage: discountPercentage ?? this.discountPercentage,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory Deal.fromRawJson(String str) => Deal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Deal.fromJson(Map<String, dynamic> json) => Deal(
    title: json["title"],
    subtitle: json["subtitle"],
    ogPrice: json["ogPrice"],
    price: json["price"],
    dp: json['dp'],
    discountPercentage: json["discountPercentage"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "ogPrice": ogPrice,
    "price": price,
    "dp":dp,
    "discountPercentage": discountPercentage,
    "imageUrl": imageUrl,
  };
}
