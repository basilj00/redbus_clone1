import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';

class TrainTicketScreen extends StatelessWidget {
  const TrainTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: Center(child: Text("Update in progress, stay tuned",style: TextStyle(fontSize: 20,),)),
    );
  }
}