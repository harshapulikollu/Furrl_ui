import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:furrl_demo/model/stories.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({super.key, required this.trendingItem});
  final Stories trendingItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      width: 120,
      child: Stack(
        children: [
          AvifImage.asset(trendingItem.imageUrl, fit: BoxFit.fitWidth,),
      Container(
        decoration:  const BoxDecoration(
            gradient:  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black
              ],
            ),),),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(trendingItem.text, style: const TextStyle(color: Colors.white, fontStyle: FontStyle.italic),),
              )),
        ],
      ),
    );
  }
}
