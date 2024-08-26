import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';
import 'package:redbus_clone_app/view/Dummydb.dart';
import 'package:redbus_clone_app/view/home_screen/Search_screen/Search_screen.dart';
import 'package:redbus_clone_app/view/home_screen/bus_seats.dart';

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
        child: SingleChildScrollView(
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
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchScreen()),
                            );
                          },
                          child: Text(
                            "From",
                            style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: ColorConstants.grey,
                      thickness: 1,
                    ),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.directions_bus_outlined),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchScreen()),
                            );
                          },
                          child: Text(
                            "To",
                            style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
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
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BusSeats()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.lightRed,
                  fixedSize: Size(460, 45),
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
              ),
              const SizedBox(height: 15),
              Text(
                'Offers',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                'Get best deals with great offers',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _buildFilterButton('All'),
                  SizedBox(width: 10),
                  _buildFilterButton('Bus'),
                  SizedBox(width: 10),
                  _buildFilterButton('Train'),
                ],
              ),
              const SizedBox(height: 10),
              _buildOffersList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButton(String label) {
    return ElevatedButton(
      onPressed: () {
        // Handle filter button press
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: label == 'All' ? ColorConstants.lightRed : ColorConstants.white,
        foregroundColor: label == 'All' ? ColorConstants.white : ColorConstants.MainBlack,
        side: BorderSide(color: ColorConstants.lightRed),
      ),
      child: Text(label),
    );
  }

  Widget _buildOffersList() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: _buildOfferCard(offer),
          );
        },
      ),
    );
  }

  Widget _buildOfferCard(Dummydb offer) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            offer.type,
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            offer.description,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            'Valid till: ${offer.validTill}',
            style: TextStyle(color: ColorConstants.grey),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handle code button press
            },
            child: Text(offer.code),
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.white,
              foregroundColor: ColorConstants.MainBlack,
            ),
          ),
        ],
      ),
    );
  }
}
