// // To parse this JSON data, do
// //
// //     final homeFeed = homeFeedFromJson(jsonString);
//
// import 'dart:convert';
//
// class HomeFeed {
//   final List<HomeFeedDatum> data;
//
//   HomeFeed({
//     required this.data,
//   });
//
//   HomeFeed copyWith({
//     List<HomeFeedDatum>? data,
//   }) =>
//       HomeFeed(
//         data: data ?? this.data,
//       );
//
//   factory HomeFeed.fromRawJson(String str) => HomeFeed.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory HomeFeed.fromJson(Map<String, dynamic> json) => HomeFeed(
//     data: List<HomeFeedDatum>.from(json["data"].map((x) => HomeFeedDatum.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }
//
// class HomeFeedDatum {
//   final String type;
//   final List<dynamic> data;
//   final String? name;
//
//   HomeFeedDatum({
//     required this.type,
//     required this.data,
//     this.name,
//   });
//
//   HomeFeedDatum copyWith({
//     String? type,
//     List<dynamic>? data,
//     String? name,
//   }) =>
//       HomeFeedDatum(
//         type: type ?? this.type,
//         data: data ?? this.data,
//         name: name ?? this.name,
//       );
//
//   factory HomeFeedDatum.fromRawJson(String str) => HomeFeedDatum.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory HomeFeedDatum.fromJson(Map<String, dynamic> json) => HomeFeedDatum(
//     type: json["type"],
//     data: List<dynamic>.from(json["data"].map((x) => x)),
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "data": List<dynamic>.from(data.map((x) => x)),
//     "name": name,
//   };
// }
//
// class DatumDatumClass {
//   final String? imageUrl;
//   final String? text;
//   final String? title;
//   final String? subtitle;
//   final String? ogPrice;
//   final String? price;
//   final String? discountPercentage;
//   final String? dp;
//
//   DatumDatumClass({
//     this.imageUrl,
//     this.text,
//     this.title,
//     this.subtitle,
//     this.ogPrice,
//     this.price,
//     this.discountPercentage,
//     this.dp,
//   });
//
//   DatumDatumClass copyWith({
//     String? imageUrl,
//     String? text,
//     String? title,
//     String? subtitle,
//     String? ogPrice,
//     String? price,
//     String? discountPercentage,
//     String? dp,
//   }) =>
//       DatumDatumClass(
//         imageUrl: imageUrl ?? this.imageUrl,
//         text: text ?? this.text,
//         title: title ?? this.title,
//         subtitle: subtitle ?? this.subtitle,
//         ogPrice: ogPrice ?? this.ogPrice,
//         price: price ?? this.price,
//         discountPercentage: discountPercentage ?? this.discountPercentage,
//         dp: dp ?? this.dp,
//       );
//
//   factory DatumDatumClass.fromRawJson(String str) => DatumDatumClass.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory DatumDatumClass.fromJson(Map<String, dynamic> json) => DatumDatumClass(
//     imageUrl: json["imageUrl"],
//     text: json["text"],
//     title: json["title"],
//     subtitle: json["subtitle"],
//     ogPrice: json["ogPrice"],
//     price: json["price"],
//     discountPercentage: json["discountPercentage"],
//     dp: json["dp"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "imageUrl": imageUrl,
//     "text": text,
//     "title": title,
//     "subtitle": subtitle,
//     "ogPrice": ogPrice,
//     "price": price,
//     "discountPercentage": discountPercentage,
//     "dp": dp,
//   };
// }


// To parse this JSON data, do
//
//     final homeFeed = homeFeedFromJson(jsonString);

import 'dart:convert';

class HomeFeed {
  final List<HomeFeedDatum> data;

  HomeFeed({
    required this.data,
  });

  HomeFeed copyWith({
    List<HomeFeedDatum>? data,
  }) =>
      HomeFeed(
        data: data ?? this.data,
      );

  factory HomeFeed.fromRawJson(String str) => HomeFeed.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeFeed.fromJson(Map<String, dynamic> json) => HomeFeed(
    data: List<HomeFeedDatum>.from(json["data"].map((x) => HomeFeedDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class HomeFeedDatum {
  final String type;
  List<dynamic> data;
  final String? name;

  HomeFeedDatum({
    required this.type,
    required this.data,
    this.name,
  });

  HomeFeedDatum copyWith({
    String? type,
    List<dynamic>? data,
    String? name,
  }) =>
      HomeFeedDatum(
        type: type ?? this.type,
        data: data ?? this.data,
        name: name ?? this.name,
      );

  factory HomeFeedDatum.fromRawJson(String str) => HomeFeedDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeFeedDatum.fromJson(Map<String, dynamic> json) => HomeFeedDatum(
    type: json["type"],
    data: List<dynamic>.from(json["data"].map((x) => x)),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "data": List<dynamic>.from(data.map((x) => x)),
    "name": name,
  };
}

class DatumDatumClass {
  final String? imageUrl;
  final String? text;
  final String? title;
  final String? subtitle;
  final String? ogPrice;
  final String? price;
  final String? discountPercentage;
  final String? dp;

  DatumDatumClass({
    this.imageUrl,
    this.text,
    this.title,
    this.subtitle,
    this.ogPrice,
    this.price,
    this.discountPercentage,
    this.dp,
  });

  DatumDatumClass copyWith({
    String? imageUrl,
    String? text,
    String? title,
    String? subtitle,
    String? ogPrice,
    String? price,
    String? discountPercentage,
    String? dp,
  }) =>
      DatumDatumClass(
        imageUrl: imageUrl ?? this.imageUrl,
        text: text ?? this.text,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        ogPrice: ogPrice ?? this.ogPrice,
        price: price ?? this.price,
        discountPercentage: discountPercentage ?? this.discountPercentage,
        dp: dp ?? this.dp,
      );

  factory DatumDatumClass.fromRawJson(String str) => DatumDatumClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DatumDatumClass.fromJson(Map<String, dynamic> json) => DatumDatumClass(
    imageUrl: json["imageUrl"],
    text: json["text"],
    title: json["title"],
    subtitle: json["subtitle"],
    ogPrice: json["ogPrice"],
    price: json["price"],
    discountPercentage: json["discountPercentage"],
    dp: json["dp"],
  );

  Map<String, dynamic> toJson() => {
    "imageUrl": imageUrl,
    "text": text,
    "title": title,
    "subtitle": subtitle,
    "ogPrice": ogPrice,
    "price": price,
    "discountPercentage": discountPercentage,
    "dp": dp,
  };
}

