import 'package:flutter/material.dart';
import 'package:furrl_demo/model/stories.dart';
import 'package:furrl_demo/ui/widgets/trending_item.dart';
import 'package:furrl_demo/util/colors.dart';

class TrendingCategories extends StatelessWidget {
  const TrendingCategories({super.key, required this.categories});
  final List<Stories> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top:16.0, bottom: 16.0, left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trending on Furrl',
              style: TextStyle(color: UiColors.purple, fontSize: 20.0),
            ),
            const SizedBox(height: 4.0,),
            const Text(
              'What\'s your vibe today?',
              style: TextStyle( fontSize: 12.0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 120.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TrendingItem(trendingItem: categories[index]);
                  },
              separatorBuilder: (BuildContext context, int index){
                    return const SizedBox(width: 16.0,);
              },),
            ),
          ],
        ),
      ),
    );
  }
}
