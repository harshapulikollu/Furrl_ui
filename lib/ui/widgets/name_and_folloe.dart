import 'package:flutter/material.dart';
import 'package:furrl_demo/ui/widgets/follow_button.dart';
import 'package:furrl_demo/util/colors.dart';

class NameAndFollow extends StatelessWidget {
  const NameAndFollow({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),),
          const SizedBox(width: 8.0,),
          const CircleAvatar(backgroundColor: Colors.grey, radius: 4.0,),
          const SizedBox(width: 8.0,),
          const FollowButton()
        ],
      ),
    );
  }
}
