import 'package:flutter/material.dart';
import 'package:redbus_clone1/utils/color_consants.dart';

class BookingBusScreen extends StatefulWidget {
  const BookingBusScreen({super.key});

  @override
  State<BookingBusScreen> createState() => _BookingBusScreenState();
}

class _BookingBusScreenState extends State<BookingBusScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

      backgroundColor:Colors.grey[200],
       body: Column(
          children: <Widget>[
            Container(
              width: 480,
              color: ColorConstants.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "All your bookings have been downloaded from redBus.",
                    style: TextStyle(color: ColorConstants.lightRed),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Pull to refresh",
                    style: TextStyle(color: ColorConstants.grey),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TabBar(
                labelColor: ColorConstants.lightRed,
                unselectedLabelColor: ColorConstants.grey,
                indicatorColor: ColorConstants.lightRed,
                tabs: [
                  Tab(text: "COMPLETED"),
                  Tab(text: "CANCELLED"),
                ],
              ),
            ),            

            SizedBox(height: 5,),
            
            Container(
              height: 50,
              width: 480,
              color: ColorConstants.white,
              child: TextButton(onPressed: (){

              }, child: Text("Show Bookings",
              style: TextStyle(
                color: ColorConstants.MainBlack,
                fontWeight: FontWeight.w100,
              
              ),)),

            )     
          ],
        ),
      ),
    );
  }
}