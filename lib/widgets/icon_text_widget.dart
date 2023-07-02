import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_styles.dart';

import '../utils/app_layout.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12), horizontal: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Row(
              children: [
                 Icon(icon, color: Colors.grey,),
                Gap(AppLayout.getWidth(15)),
                Text(text,style: Styles.headlines3.copyWith(color: Colors.black),)
              ],
            ),
          );
  }
}