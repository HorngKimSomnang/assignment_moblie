import 'package:flutter/material.dart';
import 'package:flutter_application_1/ThemeMode/Theme_logic.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: Colors.white,
        elevation: 1,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _showThemeSettings(context), // Open theme settings
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Admin',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text('View profile'),
                ),
              ],
            ),
          ),
          const Divider(),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
            ),
            children: [
              _buildGridOption(Icons.receipt, 'Orders', () {}),
              _buildGridOption(Icons.favorite, 'Favourites', () {}),
              _buildGridOption(Icons.payment, 'Payments', () {}),
              _buildGridOption(Icons.location_on, 'Addresses', () {}),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text('Perks for you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          _buildListTile(Icons.star, 'Become a pro', () {}),
          _buildListTile(Icons.card_giftcard, 'Vouchers', () {}),
          _buildListTile(Icons.emoji_events, 'panda rewards', () {}),
          _buildListTile(Icons.person_add, 'Invite friends', () {}),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text('General',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          _buildListTile(Icons.help, 'Help center', () {}),
          _buildListTile(Icons.business, 'foodpanda for business', () {}),
          _buildListTile(Icons.more_horiz, 'Terms & policies', () {}),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Log out action
              },
              child: const Text('Log out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Version 25.2.0 (250200044)',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  // Widget for Grid options
  Widget _buildGridOption(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: Colors.grey[700]),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  // Widget for ListTile options
  Widget _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(title),
      onTap: onTap,
    );
  }

  // Method to show theme settings
  void _showThemeSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        final themeLogic = Provider.of<ThemeLogic>(context, listen: false);

        return SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: const Icon(Icons.light_mode),
                title: const Text('Light Mode'),
                onTap: () {
                  themeLogic.changeToLight();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
                onTap: () {
                  themeLogic.changeToDark();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('System Mode'),
                onTap: () {
                  themeLogic.changeToSystem();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
