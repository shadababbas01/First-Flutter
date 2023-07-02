import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return  Container(
      width: MediaQuery.of(context).size.width*0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [BoxShadow(
          color: Colors.grey,
          blurRadius: 20,
          spreadRadius: 5
        )
        ]
      ),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
              )
            ),
          ),
          const Gap(15),
          Text("${hotel['place']}", style: Styles.headlines2.copyWith(color: Colors.white),),
          const Gap(5),
          Text("${hotel['destination']}", style: Styles.headlines4.copyWith(color: Colors.white),),
          const Gap(5),
          Text("\$${hotel['price']} / per Night", style: Styles.headlines1.copyWith(color: Colors.white),)
        ],
      ),
      
    );
  } 
}