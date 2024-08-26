import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';
import 'package:redbus_clone_app/utils/image_consants.dart';
import 'package:redbus_clone_app/view/home_screen/tabs/bus_ticket.dart';
import 'package:redbus_clone_app/view/home_screen/tabs/cab_ticket.dart';
import 'package:redbus_clone_app/view/home_screen/tabs/metro_ticket.dart';
import 'package:redbus_clone_app/view/home_screen/tabs/train_ticket.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: ColorConstants.white, 
        body: Column(
          children: <Widget>[
            TabBar(
              labelColor: ColorConstants.MainRed,
              unselectedLabelColor: ColorConstants.MainBlack,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: ColorConstants.MainRed,
              tabs: <Widget>[
                Tab(
                  icon: Image.asset(
                    ImageConstants.BUS,
                    height: 49,
                  ),
                  text: "Bus tickets",
                ),
                Tab(
                  icon: Image.asset(
                    ImageConstants.TRAIN,
                    height: 49,
                  ),
                  text: "Train tickets",
                ),
                Tab(
                  icon: Image.asset(
                    ImageConstants.CAB,
                    height: 49,
                  ),
                  text: "Auto / Cab",
                ),
                Tab(
                  icon: Image.asset(
                    ImageConstants.METRO,
                    height: 49,
                  ),
                  text: "Metro tickets",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  BusTicketScreen(),
                  TrainTicketScreen(),
                  CabTicketScreen(),
                  MetroTicketScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
