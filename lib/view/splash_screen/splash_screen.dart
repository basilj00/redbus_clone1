import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';
import 'package:redbus_clone_app/utils/image_consants.dart';
import 'package:redbus_clone_app/view/splash_screen/userNew_splash_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {


   @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then(
      (value){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => userNewScreen(),
    )
        );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorConstants.MainRed,

      body: Center(
        child: Image.asset(ImageConstants.LOGO),),
    );
  }
}