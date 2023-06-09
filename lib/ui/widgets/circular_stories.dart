import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:furrl_demo/model/stories.dart';
import 'package:furrl_demo/ui/widgets/circular_image.dart';

class CircularCategories extends StatelessWidget {
  const CircularCategories({super.key, required this.categories});
  final List<Stories> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                CircularImage(imageUrl: categories[index].imageUrl),
                const SizedBox(
                  height: 8.0,
                ),
                Text(categories[index].text),
              ],
            ),);
          }),
    );
  }
}
