import 'package:flutter/material.dart';
import 'package:redbus_clone1/utils/color_consants.dart';
import 'package:redbus_clone1/utils/image_consants.dart';
import 'package:redbus_clone1/view/booking_screen/booking_screen.dart';
import 'package:redbus_clone1/view/home_screen/home_screen.dart';
import 'package:redbus_clone1/view/profile_screen/profile_screen.dart';

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
    Container(color: Colors.yellow),
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
