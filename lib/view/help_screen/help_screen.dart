import 'package:flutter/material.dart';
import 'package:redbus_clone_app/utils/color_consants.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: ColorConstants.white,

      appBar: AppBar(
        backgroundColor: ColorConstants.white,
        elevation: 0,
        title: Text('Help', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: Colors.grey[300]),
         
          Expanded(
            child: ListView(
              children: [
                _buildHelpTopic(
                    'Technical Issues', 'Need some technical help?', Icons.settings_outlined),
                _buildHelpTopic(
                    'redBus Referral Help', 'Need help with redBus referral ...', Icons.card_giftcard_outlined),
                _buildHelpTopic(
                    'New bus booking help', 'Bus availability/ Child fare, Lugg...', Icons.directions_bus_outlined),
                _buildHelpTopic('Offers', 'Need help with offers?', Icons.local_offer_outlined),
                _buildHelpTopic('Metro Tickets', 'Need help with metro tickets?', Icons.train_outlined),
                _buildHelpTopic('redBus Wallet Help', 'Need any help with redBus wall...', Icons.account_balance_wallet_outlined),
                _buildHelpTopic('Auto rides', 'Need help with auto rides?', Icons.local_taxi_outlined),
              ],
            ),
          ),
        ],
      ),
      
    );
  }


  Widget _buildHelpTopic(String title, String subtitle, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: ColorConstants.lightRed),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: TextStyle(color: ColorConstants.grey)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: ColorConstants.grey),
    );
  }
}


