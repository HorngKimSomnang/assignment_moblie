import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroceryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _buildOffersSection(),
          _buildCuisineSection(),
          _buildTopDealsSection(),
          _buildShopByStoreSection(),
          _buildShopbyStore(),
        ],
      ),
    );
  }

  // App Bar with title and search
  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 130,
      backgroundColor: Colors.white10,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.location_on, size: 30, color: Colors.black),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Selected location",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2),
          Text("Phnom Penh",
              style: TextStyle(fontSize: 13, color: Colors.black)),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined,
              color: Colors.black, size: 30),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: _buildSearchBar(),
      ),
    );
  }

  // Search bar widget
  Widget _buildSearchBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search for restaurant and groceries",
                prefixIcon: Icon(CupertinoIcons.search,
                    size: 27, color: Colors.black54),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Offers section with horizontal scrolling
  Widget _buildOffersSection() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _createImageButton('assets/Panda.png', "Groceries"),
                  _createImageButton('assets/Panda.png', "Convenience"),
                  _createImageButton('assets/Panda.png', "Beverages & Alchol"),
                  _createImageButton('assets/Panda.png', "CNY Celebration"),
                  _createImageButton('assets/Panda.png', "Beauty"),
                  _createImageButton('assets/Panda.png', "Health & Wellbeing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'First order? Here’s 70% off & free delivery!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Icon(Icons.local_offer, color: Colors.white, size: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Cuisine section with horizontal scrolling
  Widget _buildCuisineSection() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Popular Shops",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _createCuisineCard(
                      'assets/Chipmongsm.jpg', 'Aeon MaxValu\nSupermarket'),
                  _createCuisineCard('assets/bigcmini.jpg', 'Big C Mini'),
                  _createCuisineCard(
                      'assets/bigcmini.jpg', '    Big C \nFoodplace'),
                  _createCuisineCard(
                      'assets/greentown.jpg', 'Green Town \nVegetables'),
                  _createCuisineCard(
                      'assets/Chipmongsm.jpg', '   Chip Mong \nSupermarket'),
                  _createCuisineCard('assets/guardiant.jpg', 'Guardian'),
                  _createCuisineCard('assets/miniso.jpg', 'MINISO'),
                  _createCuisineCard('assets/miniso.jpg', 'Ucare Pharmacy'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createImageButton(String imagePath, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.asset(imagePath, width: 80, height: 60),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _createCuisineCard(String imagePath, String cuisineName) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              width: 90,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          Text(cuisineName, style: TextStyle(fontSize: 14)),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  // Top Deals Section
  Widget _buildTopDealsSection() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Top Deals",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Column(
              children: [
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'The First Store',
                  deliveryTime: '5–20 mins',
                  deliveryFee: '\$0.65',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Green Town Vegetables',
                  deliveryTime: '15–30 mins',
                  deliveryFee: '\$0.54',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Anussavry Pet Shop',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _createTopDealCard({
    required String imagePath,
    required String name,
    required String deliveryTime,
    required String deliveryFee,
    required String freeDeliveryText,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white, // Set background to white10 here
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$deliveryTime • 🛵 $deliveryFee'),
            Text(freeDeliveryText, style: TextStyle(color: Colors.pink)),
          ],
        ),
      ),
    );
  }

  Widget _buildShopByStoreSection() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shop by Store",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChip(
                        label: Text('All'), selected: true, onSelected: (_) {}),
                    SizedBox(width: 8),
                    FilterChip(
                        label: Text('Groceries'),
                        selected: false,
                        onSelected: (_) {}),
                    SizedBox(width: 8),
                    FilterChip(
                        label: Text('Convenience'),
                        selected: false,
                        onSelected: (_) {}),
                    SizedBox(width: 8),
                    FilterChip(
                        label: Text('Beverages & Alcohol'),
                        selected: false,
                        onSelected: (_) {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShopbyStore() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'The First Store',
                  deliveryTime: '5–20 mins',
                  deliveryFee: '\$0.65',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Green Town Vegetables',
                  deliveryTime: '15–30 mins',
                  deliveryFee: '\$0.54',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Anussavry Pet Shop',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
                _createTopDealCard(
                  imagePath: 'assets/Panda.png',
                  name: 'Daily Fresh Fruit',
                  deliveryTime: '10–25 mins',
                  deliveryFee: '\$0.78',
                  freeDeliveryText: 'Free delivery above \$11.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
