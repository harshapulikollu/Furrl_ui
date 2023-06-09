import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32.0,
      backgroundColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipOval(child: AvifImage.asset(imageUrl)),
      ),
    );
  }
}
