import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';
import 'package:redbus_clone_app/utils/image_consants.dart';
import 'package:redbus_clone_app/view/booking_screen/booking_screen.dart';
import 'package:redbus_clone_app/view/help_screen/help_screen.dart';
import 'package:redbus_clone_app/view/home_screen/home_screen.dart';
import 'package:redbus_clone_app/view/profile_screen/profile_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    BookingScreen(),
    HelpScreen(),    
    ProfileScreen(),    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.white,
        selectedItemColor: ColorConstants.MainRed,
        unselectedItemColor: ColorConstants.MainBlack,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImageConstants.HOME_ICON)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImageConstants.BOOKING_ICON)),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImageConstants.HELP_ICON)),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(ImageConstants.PROFILE_ICON)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
