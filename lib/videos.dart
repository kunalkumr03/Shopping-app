import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  Videos({super.key});

  final List<Map<String, dynamic>> categories = [
    {
      "title": "Mobiles, Electronics & Alexa",
      "image": "assets/images/shirts_23.png"
    },
    {"title": "Amazon Bazaar", "image": "assets/images/shirts_24.png"},
    {"title": "Deals & Savings", "image": "assets/images/shirts_25.png"},
    {
      "title": "Groceries & Pet Supplies",
      "image": "assets/images/shirts_22.png"
    },
    {"title": "MiniTV, Video & Music", "image": "assets/images/shirts_26.png"},
    {"title": "Fashion & Beauty", "image": "assets/images/shirts_27.png"},
    {"title": "Prime", "image": "assets/images/shirts_28.png"},
    {"title": "Games & Live Shopping", "image": "assets/images/shirts_29.png"},
    {
      "title": "Pharmacy,Health & Household",
      "image": "assets/images/shirts_30.png"
    },
    {
      "title": "Toys, children & Beauty",
      "image": "assets/images/shirts_32.png"
    },
    {"title": "Gifting", "image": "assets/images/shirts_33.png"},
    {"title": "Sports & Fitness", "image": "assets/images/shirts_34.png"},
    {"title": "Books & Education", "image": "assets/images/shirts_31.png"},
    {"title": "Travel & Auto", "image": "assets/images/shirts_35.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 columns
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7, // Adjust aspect ratio for design
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(categories[index]["image"],
                      height: 80), // Replace with NetworkImage if using URLs
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      categories[index]["title"],
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
