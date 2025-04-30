import 'package:flutter/material.dart';

class ExampleWishlist extends StatelessWidget {
  const ExampleWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist & Collections',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
