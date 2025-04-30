import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificationsEnabled = true;
  bool optimizedCheckoutEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text("Notifications"),
            subtitle: Text("This will not affect any order updates"),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Optimized Experience",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("For internet connection quality",
                    style: TextStyle(color: Colors.grey)),
                CheckboxListTile(
                  title: Text("Optimized checkout flow"),
                  value: optimizedCheckoutEnabled,
                  onChanged: (value) {
                    setState(() {
                      optimizedCheckoutEnabled = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
