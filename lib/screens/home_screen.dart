import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/widgets/hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Good Morning",
                         style: Styles.headlines3,
                        ),
                        Gap(5),
                        Text("Book Ticktes",
                        style: Styles.headlines1,
                        ),
                      ],
                    
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/plane.jpeg"
                            )
                          )
                        ),
                      )
                    
                  ],
                ),
                Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: const Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text("Search")
                    ],
                  ),
                ),
                Gap(45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headlines2,),
                    InkWell(
                      onTap: (){
                        print("you are tapped");
                      },
                      child: Text("View all",style: Styles.textStyle,)
                      )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left : 20),
            child: Row(
              children:ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels" , style: Styles.headlines2,),
                InkWell(
                  onTap: (){
                    print("you are tapped for hotels");
                  },
                  child: Text("View All" , style: Styles.textStyle,),
                )
              ],
            ),
          ),
          const Gap(15),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children:hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            ),
            )
        ],
      ),
    );
  }
}