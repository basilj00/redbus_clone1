import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';

class BookingMetroScreen extends StatefulWidget {
  const BookingMetroScreen({super.key});

  @override
  State<BookingMetroScreen> createState() => _BookingMetroScreenState();
}

class _BookingMetroScreenState extends State<BookingMetroScreen> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 3, 
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: TabBar(
            labelColor: ColorConstants.lightRed,
            unselectedLabelColor: Colors.grey,
            indicatorColor: ColorConstants.lightRed,
            tabs: [
              Tab(text: "UPCOMING"),
              Tab(text: "EXPIRED"),
              Tab(text: "CANCELLED"),
            ],
          ),
        ),
      ),
    );
  }
}
