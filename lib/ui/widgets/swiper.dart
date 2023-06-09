import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:furrl_demo/model/deal.dart';
import 'package:furrl_demo/ui/widgets/name_and_folloe.dart';
import 'package:furrl_demo/ui/widgets/post_media.dart';
import 'package:furrl_demo/ui/widgets/price_row.dart';
import 'package:furrl_demo/util/colors.dart';

class CustomSwiper extends StatefulWidget {
  const CustomSwiper({super.key, required this.swiperData, required this.name});
  final List<Deal> swiperData;
  final String name;

  @override
  State<CustomSwiper> createState() => _CustomSwiperState();
}

class _CustomSwiperState extends State<CustomSwiper> {
  int _currentIndexPage  = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          NameAndFollow(name: widget.name,),
          Swiper(
            axisDirection: AxisDirection.right,
            itemBuilder: (context, index) {
              return SizedBox(
                  height:400,
                  child: PostMedia(imageUrl: widget.swiperData[index].imageUrl, title: widget.swiperData[index].title, subtitle: PriceRow(price: widget.swiperData[index].price, priceColor: Colors.white, ogPrice: widget.swiperData[index].ogPrice, discountPercentage: widget.swiperData[index].discountPercentage),));
            },
            itemCount: widget.swiperData.length,
            itemWidth: 300.0,
            itemHeight: 400.0,
            layout: SwiperLayout.STACK,
            onIndexChanged: (int index){
              setState(() {
                _currentIndexPage++;
              });
            },
          ),
          const SizedBox(height: 4.0,),
          DotsIndicator(
            dotsCount: 3,
            position: _currentIndexPage % 3,
            decorator: const DotsDecorator(
              color: Colors.grey, // Inactive color
              activeColor: UiColors.purple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration:  BoxDecoration(
                border: Border.all(width: 1, color: UiColors.purple),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text('View all', style: TextStyle(color: UiColors.purple),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
