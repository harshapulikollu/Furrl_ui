import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:furrl_demo/model/deal.dart';
import 'package:furrl_demo/ui/widgets/follow_button.dart';
import 'package:furrl_demo/ui/widgets/name_and_folloe.dart';
import 'package:furrl_demo/ui/widgets/post_media.dart';
import 'package:furrl_demo/util/colors.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.postData, required this.name});
  final Deal postData;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Container(
      color: Colors.white,
      child: Column(
        children: [
          NameAndFollow(name: name,),
          PostMedia(imageUrl: postData.imageUrl, title: postData.title, dp: postData.imageUrl,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(postData.subtitle, textAlign: TextAlign.center,),
          ),
        ],
      ),
    ),);
  }
}
