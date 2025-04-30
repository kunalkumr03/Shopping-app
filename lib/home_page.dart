import 'package:flutter/material.dart';
import 'package:shop_app_flutter/cart_page.dart';
import 'package:shop_app_flutter/checkout_page.dart';
import 'package:shop_app_flutter/hastag_trends.dart';
import 'package:shop_app_flutter/product_list.dart';
import 'package:shop_app_flutter/videos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String selectedFilter;
  int currentPage = 0;

  List<Widget> pages = [
    ProductList(),
    Videos(),
    HastagTrends(),
    IntroPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
          bottomNavItem(Icons.home, "Home", 0),
          bottomNavItem(Icons.category, "Menu", 1),
          bottomNavItem(Icons.tag_outlined, "Trends", 2),
          bottomNavItem(Icons.account_box, "Account", 3),
          bottomNavItem(Icons.shopping_bag, "Bag", 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: currentPage == index
              ? [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.deepOrange.withOpacity(0.4),
                    blurRadius: 12,
                    spreadRadius: 5,
                    offset: Offset(0, 4),
                    blurStyle: BlurStyle.normal,
                  ),
                ]
              : [],
        ),
        child: Icon(
          icon,
          color: currentPage == index ? Colors.deepOrange : Colors.black,
        ),
      ),
      label: label,
    );
  }
}
