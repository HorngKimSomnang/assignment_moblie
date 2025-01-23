import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/restaurant_detail_Page.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  HomeScreen({super.key, required this.email});

  // Sample restaurant data
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Indian Kitchen(Doun...',
      'rating': '4.0',
      'reviews': '(10)',
      'imagePath': 'assets/MMK-S FOODS.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '30% off',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$1.45',
    },
    {
      'name': 'Food Place',
      'rating': '4.4',
      'reviews': '(10)',
      'imagePath': 'assets/Food Place.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '40% off',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$0.30',
    },
    {
      'name': 'Food Shop',
      'rating': '4.8',
      'reviews': '(10)',
      'imagePath': 'assets/Foods Shop 5.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '40% off',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$0.30',
    },
    {
      'name': 'Burger House',
      'rating': '4.7',
      'reviews': '(10)',
      'imagePath': 'assets/Burger House.jpg',
      'minOrder': 'PKR 299 minimum',
      'cuisine': 'Pakistani',
      'time': '30-40 min',
      'discount': '10% off',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$3.05',
    },
    {
      'name': 'Pizza House',
      'rating': '4.5',
      'reviews': '(10)',
      'imagePath': 'assets/Pizza House.jpg',
      'minOrder': 'PKR 249 minimum',
      'cuisine': 'Pakistani',
      'time': '10-25 min',
      'discount': '15% off',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$0.30',
    },
    {
      'name': 'Food Shop',
      'rating': '4.8',
      'reviews': '(10)',
      'imagePath': 'assets/Foods Shop 2.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '40% off',
      'deliveryType': 'Limited time: save 25%',
      'delivery': '\$0.30',
    },
  ];
  final List<Map<String, String>> exploreRestaurants = [
    {
      "image": 'assets/soul_coffee.webp',
      "image1": 'assets/soul_one.jpg',
      "image2": 'assets/sould_two.jpg',
      "image3": 'assets/soul_three.jpg',
      "image4": 'assets/soul_four.jpg',
      "image5": 'assets/soul_five.jpg',
      "image6": 'assets/soul_six.jpg',
      "listimage": 'assets/luckey_burger.webp',
      "title": 'Soul Coffeee',
      "minimumOrder": '\$ Milk Tea',
      "time": '10-25 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '4.7',
      'review': '(10)',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$0.85',
      'price1': '\$ 2.00',
      'price2': '\$ 2.00',
      'price3': '\$ 2.30',
      'price4': '\$ 2.30',
      'price5': '\$ 2.00',
      'price6': '\$ 2.00',
    },
    {
      "image": 'assets/luckey_burger.webp',
      "image1": 'assets/burger_one.jpg',
      "image2": 'assets/burger_two.jpg',
      "image3": 'assets/burger_three.jpg',
      "image4": 'assets/burger_four.jpg',
      "image5": 'assets/burger_five.jpg',
      "image6": 'assets/Burger House.jpg',
      "title": 'Luckey Burger (FB Plaza Tuol San... ',
      "minimumOrder": '\$\$ Fried Chicken',
      "time": '10-30 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '5',
      'review': '(10)',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$1.45',
      'price1': '\$ 7.30',
      'price2': '\$ 2.46',
      'price3': '\$2.93',
      'price4': '\$5.40',
      'price5': '\$3.50',
      'price6': '\$3.41',
    },
    {
      "image": 'assets/Crust_pizza.webp',
      "image1": 'assets/pizza_one.jpg',
      "image2": 'assets/pizza_two.jpg',
      "image3": 'assets/pizza_three.jpg',
      "image4": 'assets/pizza_four.jpg',
      "image5": 'assets/pizza_five.jpg',
      "image6": 'assets/pizza_six.jpg',
      "title": 'Pasta Corner',
      "minimumOrder": '\$\$\$ Pizza',
      "time": '10-40 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '4',
      'review': '(10)',
      'deliveryType': 'Limited time: save 25%',
      'delivery': '\$1.45',
      'price1': '\$ 18.99',
      'price2': '\$ 20.90',
      'price3': '\$ 15.50',
      'price4': '\$ 18.99',
      'price5': '\$ 15.99',
      'price6': '\$ 21.99',
    },
    {
      "image": 'assets/coffees.webp',
      "image1": 'assets/drink_one.jpg',
      "image2": 'assets/drink_two.jpg',
      "image3": 'assets/drink_three.jpg',
      "image4": 'assets/drink_four.jpg',
      "image5": 'assets/drink_five.jpg',
      "image6": 'assets/drink_six.jpg',
      "title": 'Onezo',
      "minimumOrder": 'Tea & coffee',
      "time": '10-25 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '4.3',
      'review': '(10)',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$1',
      'price1': '\$ 1.25',
      'price2': '\$ 1.50',
      'price3': '\$ 2.00',
      'price4': '\$ 2.50',
      'price5': '\$ 1.50',
      'price6': '\$ 2.00',
    },
    {
      'image': 'assets/mihel.jpg',
      "image1": 'assets/mihel_one.jpg',
      "image2": 'assets/mihel_two.jpg',
      "image3": 'assets/mihel_three.jpg',
      "image4": 'assets/mihel_four.jpg',
      "image5": 'assets/mihel_five.jpg',
      "image6": 'assets/mihel_six.jpg',
      "title": 'Mihel',
      "minimumOrder": '\$\$\$ Noddles',
      "time": '10-20 min ',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '5',
      'review': '(10)',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$0.77',
      'price1': '\$ 1.88',
      'price2': '\$ 2.20',
      'price3': '\$ 2.30',
      'price4': '\$ 3.00',
      'price5': '\$ 2.50',
      'price6': '\$ 3.10',
    },
    {
      'image': 'assets/Meatballs.webp',
      "image1": 'assets/Meatball_one.webp',
      "image2": 'assets/Meatball_two.webp',
      "image3": 'assets/Meatball_six.webp',
      "image4": 'assets/Meatball_four.jpg',
      "image5": 'assets/Meatball_six.webp',
      "image6": 'assets/Meatballs.webp',
      'title': 'Meatballs',
      'minimumOrder': 'Meatballs',
      'time': '10-25 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '4.8',
      'review': '(10)',
      'deliveryType': 'Limited time: save 25%',
      'delivery': '\$0.85',
      'price1': '\$ 3.50',
      'price2': '\$ 2.50',
      'price3': '\$ 3.50',
      'price4': '\$ 3.00',
      'price5': '\$ 3.50',
      'price6': '\$ 3.50',
    },
    {
      "image": 'assets/Dessert.jpg',
      "image1": 'assets/Dessert_one.jpg',
      "image2": 'assets/Dessert_two.jpg',
      "image3": 'assets/Dessert_three.jpg',
      "image4": 'assets/Dessert_four.jpg',
      "image5": 'assets/Dessert_five.jpg',
      "image6": 'assets/Dessert_six.jpg',
      "title": 'Dessert',
      "minimumOrder": 'Frappe & Smoothies',
      "time": '10-25 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '6',
      'review': '(10)',
      'deliveryType': '\$0 delivery, min. \$3',
      'delivery': '\$0.85',
      'price1': '\$ 2.75',
      'price2': '\$ 2.00',
      'price3': '\$ 3.50',
      'price4': '\$ 3.00',
      'price5': '\$3.50',
      'price6': '\$ 2.50',
    },
    {
      "image": 'assets/Koi.webp',
      "image1": 'assets/Koi_one.webp',
      "image2": 'assets/Koi_two.webp',
      "image3": 'assets/Koi_three.webp',
      "image4": 'assets/Koi_four.webp',
      "image5": 'assets/Koi_five.webp',
      "image6": 'assets/Koi_six.webp',
      "title": 'Koi',
      "minimumOrder": '\$\$ Milk Tea',
      "time": '10-40 min',
      'time_delivery': 'Delivery 10-25 min',
      'rate': '4.7',
      'review': '(10)',
      'deliveryType': 'Limited time: save 25%',
      'delivery': '\$ 2.00',
      'price1': '\$ 2.30',
      'price2': '\$ 2.00',
      'price3': '\$ 2.00',
      'price4': '\$ 2.50',
      'price5': '\$ 1.00',
      'price6': '\$ 1.50',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _buildOffersSection(),
          _buildCuisineSection(),
          _buildExploreRestaurantsSection(exploreRestaurants),
        ],
      ),
    );
  }

// App Bar with title and search
  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 130,
      backgroundColor: const Color(0xFFFF2B85),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.location_on, size: 30, color: Colors.white),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Selected location",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2),
          Text("Phnom Penh",
              style: TextStyle(fontSize: 13, color: Colors.white)),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border_rounded,
              color: Colors.white, size: 30),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined,
              color: Colors.white, size: 30),
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
              color: Colors.white,
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
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _createImageButton('assets/offers.png', "Offers"),
                  _createImageButton(
                      'assets/restaurant.png', "New restaurants"),
                  _createImageButton('assets/pick_up.png', "Pick-up"),
                  _createImageButton('assets/pandasend.png', "pandasend"),
                  _createImageButton('assets/voucher_panda.png', "Vouchers"),
                  _createImageButton('assets/top.png', "Top restaurants"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "New arrivals up to 50% off",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: restaurants.map(_createRestaurantCard).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createRestaurantCard(Map<String, dynamic> restaurant) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  restaurant['imagePath'],
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (restaurant['discount'].isNotEmpty)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFFF2885),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            )),
                        child: Text(
                          restaurant['discount'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    Container(
                      margin: restaurant['discount'].isNotEmpty
                          ? EdgeInsets.only(top: 5)
                          : EdgeInsets.only(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFFF2885),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          )),
                      child: Text(
                        restaurant['deliveryType'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restaurant['name'] ?? 'Unknown Restaurant',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        SizedBox(width: 4),
                        Text(
                          restaurant['rating'] ?? 'N/A',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          restaurant['reviews'] ?? '(0)',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  '${restaurant['minOrder'] ?? 'No minimum order'} - ${restaurant['cuisine'] ?? 'Unknown Cuisine'}',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.black, size: 16),
                    SizedBox(width: 4),
                    Text(
                      restaurant['time'] ?? 'N/A',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.delivery_dining_rounded,
                      color: Color(0xFFFF2B85),
                      size: 16,
                    ),
                    SizedBox(width: 5),
                    Text(
                      restaurant['delivery'] ?? '\$0',
                      style: TextStyle(
                        color: Color(0xFFFF2B85),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Cuisine section with horizontal scrolling
  Widget _buildCuisineSection() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your favourite cuisines",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _createCuisineCard('assets/favorite_pizza.jpg', 'Pizza'),
                  _createCuisineCard('assets/favrite_burgers.jpg', 'Burgers'),
                  _createCuisineCard('assets/favorite_chicken.jpg', 'Chicken'),
                  _createCuisineCard('assets/favorite_pasta.jpeg', 'Pasta'),
                  _createCuisineCard('assets/favorite_salad.jpg', 'Salads'),
                  _createCuisineCard('assets/favorite_hotpot.jpg', 'Hot Pot'),
                  _createCuisineCard(
                      'assets/favorite_icecream.jpg', 'Ice Cream'),
                  _createCuisineCard(
                      'assets/favorite_koreanfood.jpg', 'Korean'),
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
}

Widget _buildExploreRestaurantsSection(
    List<Map<String, String>> exploreRestaurants) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore restaurants",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: exploreRestaurants.length,
            itemBuilder: (context, index) {
              final restaurant = exploreRestaurants[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RestaurantDetailPage(restaurant: restaurant),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          restaurant['image']!,
                          fit: BoxFit.cover,
                          height: 180,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  restaurant['title'] ?? 'Unknown Restaurant',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 18),
                                    SizedBox(width: 4),
                                    Text(
                                      restaurant['rate'] ?? 'N/A',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      restaurant['review'] ?? '(0)',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              '${restaurant['minimumOrder'] ?? 'No minimum order'} ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.access_time,
                                    color: Colors.black, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  restaurant['time'] ?? 'N/A',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.delivery_dining_rounded,
                                  color: Color(0xFFFF2B85),
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  restaurant['delivery'] ?? '\$0',
                                  style: TextStyle(
                                    color: Color(0xFFFF2B85),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFF2885),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text(
                                restaurant['deliveryType'] ?? 'No type',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
