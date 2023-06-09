// To parse this JSON data, do
//
//     final stories = storiesFromJson(jsonString);

import 'dart:convert';

class Stories {
  final String imageUrl;
  final String text;

  Stories({
    required this.imageUrl,
    required this.text,
  });

  Stories copyWith({
    String? imageUrl,
    String? text,
  }) =>
      Stories(
        imageUrl: imageUrl ?? this.imageUrl,
        text: text ?? this.text,
      );

  factory Stories.fromRawJson(String str) => Stories.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
    imageUrl: json["imageUrl"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "imageUrl": imageUrl,
    "text": text,
  };
}
