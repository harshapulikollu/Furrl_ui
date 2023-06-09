import 'package:flutter/material.dart';
import 'package:furrl_demo/util/colors.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({super.key, required this.price, required this.ogPrice, required this.discountPercentage, this.priceColor});
  final String price;
  final String ogPrice;
  final Color? priceColor;
  final String discountPercentage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Rs.$price', style: TextStyle( fontSize: 12, color: priceColor ?? Colors.black )),
        const SizedBox(width: 4.0,),
        Text('Rs.$ogPrice',style: const TextStyle(color: Colors.black45, fontSize: 12,decoration: TextDecoration.lineThrough)),
        const SizedBox(width: 4.0,),
        Text(discountPercentage, style: const TextStyle(color: UiColors.purple, fontSize: 12) )
      ],
    );
  }
}
