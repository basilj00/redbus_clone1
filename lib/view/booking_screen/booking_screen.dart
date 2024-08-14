import 'package:flutter/material.dart';
import 'package:redbus_clone1/utils/color_consants.dart';
import 'package:redbus_clone1/utils/image_consants.dart';
import 'package:redbus_clone1/view/booking_screen/booking_tabs/booking_bus.dart';
import 'package:redbus_clone1/view/booking_screen/booking_tabs/booking_metro.dart';
import 'package:redbus_clone1/view/booking_screen/booking_tabs/booking_train.dart';

class BookingScreen extends StatefulWidget {
  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        appBar: AppBar(
          backgroundColor: ColorConstants.white,
          elevation: 0,
          title: Row(
            children: [
              Text(
                "Bookings",
                style: TextStyle(
                  color: ColorConstants.MainBlack,
                  fontSize: 22,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Container(
              color: ColorConstants.lightRed,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: ColorConstants.white.withOpacity(0.6),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorConstants.white,
                tabs: [
                  Tab(
                    icon: Image.asset(ImageConstants.booking_bus),
                    height: 60,
                  ),
                  Tab(
                    icon: Image.asset(ImageConstants.booking_train),
                    height: 60,
                  ),
                  Tab(
                    icon: Image.asset(ImageConstants.booking_metro),
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BookingBusScreen(),
            BookingTrainScreen(),
            BookingMetroScreen(),
          ],
        ),
      ),
    );
  }
}
