import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';

class BookingTrainScreen extends StatefulWidget {
  const BookingTrainScreen({super.key});

  @override
  State<BookingTrainScreen> createState() => _BookingTrainScreenState();
}

class _BookingTrainScreenState extends State<BookingTrainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TabBar(
                  labelColor: ColorConstants.lightRed,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: ColorConstants.lightRed,
                  tabs: [
                    Tab(text: "Upcoming"),
                    Tab(text: "Completed"),
                    Tab(text: "Cancelled"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('No Upcoming Trips', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
                    Center(child: Text('No Completed Trips', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
                    Center(child: Text('No Cancelled Trips', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
