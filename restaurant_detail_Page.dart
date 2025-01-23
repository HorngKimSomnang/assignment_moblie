import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/item_detail_page.dart';

class RestaurantDetailPage extends StatelessWidget {
  final Map<String, String> restaurant;

  const RestaurantDetailPage({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xFFDF1C6E)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border, color: Color(0xFFDF1C6E)),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share_outlined, color: Color(0xFFDF1C6E)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      restaurant['image'] ?? 'assets/placeholder.png',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    restaurant['title'] ?? 'Unknown Restaurant',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text(
                        "5.0 (100+ ratings)",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurant['deliveryType'] ?? 'No type',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            restaurant['time_delivery'] ?? 'N/A',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change",
                          style: TextStyle(color: Color(0xFFDF1C6E)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(height: 30, color: Colors.grey.shade300),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.8,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  List<String> imageKeys = [
                    'image1',
                    'image2',
                    'image3',
                    'image4',
                    'image5',
                    'image6',
                  ];
                  List<String> priceKeys = [
                    'price1',
                    'price2',
                    'price3',
                    'price4',
                    'price5',
                    'price6',
                  ];
                  return _buildGridItem(
                      context, restaurant, imageKeys[index], priceKeys[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, Map<String, String> restaurant,
      String imageKey, String priceKey) {
    return InkWell(
      onTap: () {
        // Parse the price from restaurant data and pass it as double
        double price =
            double.parse(restaurant[priceKey]?.replaceAll('\$', '') ?? '0');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetailPage(
              title: restaurant['title'] ?? 'Unknown Item',
              imageUrl: restaurant[imageKey] ?? 'assets/placeholder.png',
              price: price, // Pass the price as a double
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
                restaurant[imageKey] ?? 'assets/placeholder.png',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant['title'] ?? 'Unknown Item',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$0 delivery, min. \$3",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                      Text(
                        restaurant[priceKey] ??
                            '\$0', // Display the price from restaurant data
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFDF1C6E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
