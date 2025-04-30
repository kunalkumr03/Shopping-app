import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/cart_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  calculateTotalPrice() {
    double total = 0;
    for (var item in Provider.of<CartProvider>(context, listen: false).cart) {
      if (item['selected'] == true) {
        total += double.parse(item['price']
            .toString()
            .replaceAll('.', '')
            .replaceAll('INR ', ''));
      }
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    final cart = (Provider.of<CartProvider>(context).cart);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping Bag',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final cartItem = cart[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Checkbox(
                      value: cartItem['selected'] ?? false,
                      onChanged: (value) {
                        setState(() {
                          cartItem['selected'] = value!;
                        });
                      },
                    ),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          cartItem['imageUrl'] as String,
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartItem['title'].toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "INR ${cartItem['price']}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'Delete Product',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              content: const Text(
                                  'Are you sure you want to remove this product ?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Provider.of<CartProvider>(context,
                                            listen: false)
                                        .removeProduct(cartItem);
                                  },
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 210, 13, 20),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.delete_outlined,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: cart.every((item) => item['selected'] == true),
                  onChanged: (value) {
                    setState(() {
                      for (var item in cart) {
                        item['selected'] = value!;
                      }
                    });
                  },
                ),
                Text("Select All"),
                Spacer(),
                Text(
                  "Total: INR ${calculateTotalPrice().toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Checkout action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
