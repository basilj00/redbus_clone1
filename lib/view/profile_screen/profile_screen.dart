import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';
import 'package:redbus_clone_app/utils/image_consants.dart';
import 'package:redbus_clone_app/view/booking_screen/booking_screen.dart';
import 'package:redbus_clone_app/view/booking_screen/booking_tabs/booking_bus.dart';

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
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatColumn("0", "Total trips"),
                  Container(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 1,
                      color: ColorConstants.grey,
                    ),
                  ),
                  _buildStatColumn("0 km", "Travelled"),
                  Container(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 1,
                      color: ColorConstants.grey,
                    ),
                  ),
                  _buildStatColumn("0 kg", "Carbon saving"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: [
                    _buildSectionTitle('My details'),
                    _buildListTile(
                      'Bookings',
                      Icons.list_alt_outlined,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  BookingScreen()),
                        );
                      },
                    ),
                    _buildListTile('Personal information', Icons.person_outline, () {}),
                    _buildListTile('Passengers', Icons.group_outlined, () {}),
                    Divider(color: Colors.grey[300]),
                    _buildSectionTitle('Payments'),
                    _buildListTile('redBus Wallet', Icons.account_balance_wallet_outlined, () {}),
                    _buildListTile('Payment methods', Icons.payment_outlined, () {}),
                    _buildListTile('GST details', Icons.receipt_long_outlined, () {}),
                    Divider(color: Colors.grey[300]),
                    _buildSectionTitle('More'),
                    _buildListTile('Offers', Icons.local_offer_outlined, () {}),
                    _buildListTile('Referrals', Icons.card_giftcard_outlined, () {}),
                    _buildListTile('Trending videos', Icons.ondemand_video_outlined, () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorConstants.MainBlack,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: ColorConstants.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: ColorConstants.MainBlack),
      title: Text(title, style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: ColorConstants.grey),
      onTap: onTap,
    );
  }
}


