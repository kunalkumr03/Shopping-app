import 'package:flutter/material.dart';
import 'package:shop_app_flutter/plus_add_adress.dart';

class SavedAdresses extends StatefulWidget {
  const SavedAdresses({super.key});

  @override
  State<SavedAdresses> createState() => _SavedAdressesState();
}

class _SavedAdressesState extends State<SavedAdresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('My Adresses', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlusAddAdress()),
              );
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              '+ Add a new adress',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
