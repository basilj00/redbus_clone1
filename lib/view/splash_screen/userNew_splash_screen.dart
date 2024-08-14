import 'package:flutter/material.dart';
import 'package:redbus_clone1/utils/color_consants.dart';
import 'package:redbus_clone1/utils/image_consants.dart';
import 'package:redbus_clone1/view/bottom_nav_screen/bottom_nav_screen.dart';

class userNewScreen extends StatefulWidget {
  const userNewScreen({super.key});

  @override
  State<userNewScreen> createState() => _userNewScreenState();
}

class _userNewScreenState extends State<userNewScreen> {

     @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then(
      (value){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => BottomNavbar(),
    )
        );
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
           alignment: Alignment.center,
            child: Image.asset(ImageConstants.LOGO),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Back !",
              style: TextStyle(
                fontSize: 32,
                color: ColorConstants.MainBlack,
                fontWeight: FontWeight.w600

              ),
              ),  
            ],
          ),

           Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                 children: [
                   Text("Bus . Train . Cab",
                                 style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.MainBlack,
                    
                   
                                 ),
                                 ),
                 ],
               ),
        ],
      ),
    );
  }
}