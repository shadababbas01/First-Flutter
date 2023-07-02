import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    print("ticket name $ticket['from']['code']");
    // final size = AppLayout.getSize(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
                color: Color(0xFF526799),
              ),
              padding: const EdgeInsets.all(16),
              child: Column( 
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headlines3.copyWith(color: Colors.white),),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) { 
                              return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate((constraints.constrainWidth()/6).floor(), (index) => Text("-",style: Styles.textStyle.copyWith(color: Colors.white),)),
                            );

                           },
                          
                        ),
                      ),
                      Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled,color: Colors.white,)),
                          ],
                        )
                      
                      ),
                      ThickContainer(),
                      const Spacer(),
                      Text(ticket['to']['code'], style: Styles.headlines3.copyWith(color: Colors.white),),

                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'], style: Styles.headlines4.copyWith(color: Colors.white),),
                      ),
                      Text(ticket['flying_time'], style: Styles.headlines3.copyWith(color: Colors.white),textAlign: TextAlign.center),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'], style: Styles.headlines4.copyWith(color: Colors.white),textAlign: TextAlign.end,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0xFFF37B67),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFeeedf2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                          
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFeeedf2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                          
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF37B67),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: EdgeInsets.only(left: 16, right: 16,bottom: 16,top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style: Styles.headlines3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Date", style: Styles.headlines3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.headlines3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Departue Time", style: Styles.headlines3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: Styles.headlines3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Number", style: Styles.headlines3.copyWith(color: Colors.white),)
                        ],
                      ) 
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}