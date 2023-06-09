import 'package:flutter/material.dart';
import 'package:furrl_demo/model/deal.dart';
import 'package:furrl_demo/ui/widgets/dela_item.dart';
import 'package:furrl_demo/util/colors.dart';

class Deals extends StatelessWidget {
  const Deals({super.key, required this.deals});
  final List<Deal> deals;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UiColors.purple2,
      child: Padding(
        padding: const EdgeInsets.only(top:16.0, bottom: 16.0, left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Blockbuster Deals',
              style: TextStyle(color: UiColors.purple, fontSize: 20.0),
            ),
            const SizedBox(height: 4.0,),
            const Text(
              'Selling out fast',
              style: TextStyle( fontSize: 12.0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 180.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: deals.length,
                itemBuilder: (BuildContext context, int index) {
                  return DealItem(dealItem: deals[index]);
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
