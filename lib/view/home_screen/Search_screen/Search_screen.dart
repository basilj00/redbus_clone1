import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstants.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: ColorConstants.MainBlack),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: TextField(
        decoration: InputDecoration(
        hintText: 'Search Boarding Point',
    hintStyle: TextStyle(color: ColorConstants.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none, 
    ),
    filled: true, 
    fillColor: Colors.grey[200], 
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
  ),
),

      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          SizedBox(height: 20),
          Text("Top Cities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorConstants.MainBlack),),
        
          SizedBox(height: 10),
          _buildTopCity('Madiwala, Bengaluru'),
          Divider(),
          _buildTopCity('Bengaluru'),
          Divider(),
          _buildTopCity('Koyambedu, Chennai'),
          Divider(),
          _buildTopCity('Chennai'),
          Divider(),
          _buildTopCity('Kukatpally, Hyderabad'),
          Divider(),
          _buildTopCity('Hyderabad'),
          Divider(),
          _buildTopCity('Sangamwadi, Pune'),
          Divider(),
          _buildTopCity('Pune'),
          Divider(),
          _buildTopCity('Kashmiri Gate, Delhi'),
        ],
      ),
    );
  }


  Widget _buildTopCity(String city) {
    return ListTile(
      title: Text(city, style: TextStyle(fontSize: 16)),
    );
  }
}
