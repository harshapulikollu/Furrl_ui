import 'package:flutter/material.dart';
import 'package:furrl_demo/util/colors.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: UiColors.purple,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text('Follow', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
