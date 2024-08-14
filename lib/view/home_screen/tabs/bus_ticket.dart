import 'package:flutter/material.dart';
import 'package:redbus_clone1/utils/color_consants.dart';

class BusTicketScreen extends StatefulWidget {
  const BusTicketScreen({super.key});

  @override
  State<BusTicketScreen> createState() => _BusTicketScreenState();
}

class _BusTicketScreenState extends State<BusTicketScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Bus Tickets",
              style: TextStyle(
                fontSize: 20,
                color: ColorConstants.MainBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.white,
              ),
              width: double.infinity, 
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.directions_bus_outlined),
                      SizedBox(width: 20),
                      Text(
                        "From",
                        style: TextStyle(
                          color: ColorConstants.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Divider(
                    color: ColorConstants.grey,
                    thickness: 1,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.directions_bus_outlined),
                      SizedBox(width: 20),
                      Text(
                        "To",
                        style: TextStyle(
                          color: ColorConstants.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Divider(
                    color: ColorConstants.grey,
                    thickness: 1,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_outlined),
                      SizedBox(width: 20),
                      Text(
                        "Date of Journey",
                        style: TextStyle(
                          color: ColorConstants.grey,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(), 
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.lightPink,
                        ),
                        child: Text(
                          "Today",
                          style: TextStyle(
                            color: ColorConstants.MainBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                       SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.lightPink,
                        ),
                        child: Text(
                          "Tomorrow",
                          style: TextStyle(
                            color: ColorConstants.MainBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.lightRed,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: ColorConstants.white),
                  const SizedBox(width: 15),
                  Text(
                    "Search buses",
                    style: TextStyle(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
