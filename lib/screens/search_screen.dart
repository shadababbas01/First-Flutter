import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \n you looking for", style: Styles.headlines1.copyWith(fontSize: 35),),
          Gap(AppLayout.getHeight(40)),
          FittedBox(
            child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3.5) ),
            child: Row(
              children: [
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  ),
                  child: Center(child: Text("Airline Tickets", style: Styles.headlines3.copyWith(color: Colors.black),)),
                ),

                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                  ),
                  child: Center(child: Text("Hotels", style: Styles.headlines3.copyWith(color: Colors.black),)),
                )
              ],
            ),
            
             decoration: BoxDecoration(
              color: const Color(0xFFF4F6FD),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(40))
             ),
          )
        ,
          ),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival")
          ],
      ),
    );
  }
}