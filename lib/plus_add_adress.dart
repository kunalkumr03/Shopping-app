import 'package:flutter/material.dart';

class PlusAddAdress extends StatefulWidget {
  const PlusAddAdress({super.key});

  @override
  State<PlusAddAdress> createState() => _PlusAddAdressState();
}

class _PlusAddAdressState extends State<PlusAddAdress> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _adressController = TextEditingController();
  final TextEditingController _localityController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  String selectedOption = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add delivery adress',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Full Name*'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _numberController,
                decoration: InputDecoration(labelText: 'Phone Number*'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _pinController,
                decoration: InputDecoration(labelText: "Pin*"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _stateController,
                decoration: InputDecoration(labelText: 'State*'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _adressController,
                decoration: InputDecoration(
                    labelText: 'Adress (House No,Building,Street, Area*)'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _localityController,
                decoration: InputDecoration(labelText: 'Locality/Town*'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _cityController,
                decoration: InputDecoration(labelText: 'City/District*'),
              ),
              SizedBox(
                height: 50,
              ),
              Divider(
                color: const Color.fromARGB(255, 220, 214, 214),
                thickness: 14,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Type of Adress*',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 'Home',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                  ),
                  Text('Home'),
                  SizedBox(width: 20), // Spacing
                  Radio(
                    value: 'Work',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                  ),
                  Text('Work'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Save button color
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                    child: Text(
                      'SAVE',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'CANCEL',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
