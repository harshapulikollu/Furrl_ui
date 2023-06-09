import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:furrl_demo/model/deal.dart';
import 'package:furrl_demo/ui/widgets/price_row.dart';
import 'package:furrl_demo/util/colors.dart';

class DealItem extends StatelessWidget {
  const DealItem({super.key, required this.dealItem});
  final Deal dealItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: AvifImage.asset(dealItem.imageUrl, fit: BoxFit.fitWidth,),
        ),
        const SizedBox(height: 8.0,),
        Text(dealItem.title, style: const TextStyle(color: Colors.black45, fontSize: 12),),
        const SizedBox(height: 4.0,),
        Text(dealItem.subtitle, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
        const SizedBox(height: 4.0,),
        PriceRow(price: dealItem.price, ogPrice:dealItem.ogPrice, discountPercentage:dealItem.discountPercentage),
      ],
    );
  }
}
