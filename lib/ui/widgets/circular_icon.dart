import 'package:flutter/material.dart';
import 'package:furrl_demo/util/colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          color: UiColors.shareGrey,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon, color: Colors.white,),
        ),
      ),
    );
  }
}
