import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for restaurants and groceries',
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade500, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white, width: 2),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Popular Searches in Restaurants
            Text(
              'Popular searches in Restaurants',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildSearchChip('Pizza'),
                _buildSearchChip('Milk'),
                _buildSearchChip('KFC'),
                _buildSearchChip('Burger'),
                _buildSearchChip('Aeon'),
                _buildSearchChip('Burger King'),
                _buildSearchChip('Pizza Hut'),
              ],
            ),
            SizedBox(height: 24),
            // Popular Searches in Shops
            Text(
              'Popular searches in Shops',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildSearchChip('Milk'),
                _buildSearchChip('Lucky Super Market'),
                _buildSearchChip('Aeon'),
                _buildSearchChip('7 Eleven'),
                _buildSearchChip('Amazon Coffee'),
                _buildSearchChip('Texas Chicken'),
                _buildSearchChip('TUBE Coffee'),
                _buildSearchChip('KOI The'),
                _buildSearchChip('Pizza Company'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchChip(String label) {
    return GestureDetector(
      onTap: () {
        // Perform the desired action here
        print('$label pressed');
      },
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.white24,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
