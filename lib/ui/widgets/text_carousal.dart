import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furrl_demo/util/colors.dart';

class TextCarousal extends StatelessWidget {
  const TextCarousal({super.key, required this.stringList});
  final List<String> stringList;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 30.0,
      viewportFraction: 1.0,
      autoPlay: true),
      items: stringList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                decoration: const BoxDecoration(
                    color: UiColors.purple
                ),
                child: Center(child: Text(i, style: const TextStyle(color: Colors.white),))
            );
          },
        );
      }).toList(),
    );
  }
}
