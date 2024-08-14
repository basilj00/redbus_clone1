import 'package:flutter/material.dart';
import 'package:redbus_clone1/utils/color_consants.dart';
import 'package:redbus_clone1/utils/image_consants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              ImageConstants.profile_background,
              height: 150,
              width: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.MainBlack,
                        ),
                      ),
                      Text(
                        "Total trips",
                        style: TextStyle(
                          color: ColorConstants.grey,
                        ),
                      ),
                    ],
                  ),



                  Container(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 1,
                      color: ColorConstants.grey,
                    ),
                  ),



                  Column(
                    children: [
                      Text(
                        "0 km",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.MainBlack,
                        ),
                      ),
                      Text(
                        "Travelled",
                        style: TextStyle(
                          color: ColorConstants.grey,
                        ),
                      ),
                    ],
                  ),


                  Container(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 1,
                      color: ColorConstants.grey,
                    ),
                  ),


                  Column(
                    children: [
                      Text(
                        "0 kg",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.MainBlack,
                        ),
                      ),
                      Text(
                        "Carbon saving",
                        style: TextStyle(
                          color: ColorConstants.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("My details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorConstants.MainBlack
                      ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                  


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
