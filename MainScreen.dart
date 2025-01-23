import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/accountscreen.dart';
import 'package:flutter_application_1/screens/groceryscreen.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/searchscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required String email});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _selectedIndex,
      children: [
        HomeScreen(
          email: '',
        ),
        GroceryScreen(),
        Searchscreen(),
        AccountScreen(),
      ],
    );
  }

  int _selectedIndex = 0;

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      backgroundColor: Colors.grey.shade100,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.black54,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: "Grocery",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account",
        ),
      ],
    );
  }
}
