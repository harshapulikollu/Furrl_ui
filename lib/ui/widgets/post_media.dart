import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:furrl_demo/ui/widgets/circular_icon.dart';
import 'package:furrl_demo/ui/widgets/circular_image.dart';
import 'package:iconly/iconly.dart';

class PostMedia extends StatelessWidget {
  const PostMedia({super.key, required this.imageUrl, required this.title, this.subtitle, this.dp});
  final String imageUrl;
  final String title;
  final Widget? subtitle;
  final String? dp;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        AvifImage.asset(imageUrl, fit: BoxFit.cover, height: 400,),
        Container(
          height: 400,
          decoration:  const BoxDecoration(
            gradient:  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black54
              ],
            ),),),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   if(dp != null)
                    CircularImage(imageUrl: dp!),
                   if(dp != null)
                    const SizedBox(width: 8.0,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text(title, style: const TextStyle(color: Colors.white),),
                       const SizedBox(height: 4.0,),
                       if(subtitle != null)
                        subtitle!
                     ],
                   )
                 ],
               ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularIcon(icon: IconlyLight.upload, onTap:(){}),
                    const SizedBox(height: 8.0,),
                    CircularIcon(icon: IconlyLight.bookmark, onTap:(){}),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
