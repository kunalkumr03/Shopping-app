import 'package:flutter/material.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'name': 'हिंदी', 'subtitle': 'Hindi', 'icon': '🇮🇳'},
    {'name': 'ਪੰਜਾਬੀ', 'subtitle': 'Punjabi', 'icon': '🏰'},
    {'name': 'English', 'subtitle': 'English', 'icon': '🌉'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Language',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final language = languages[index];
            return ListTile(
              leading: Text(language['icon']!, style: TextStyle(fontSize: 24)),
              title: Text(language['name']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text(language['subtitle']!),
              trailing: Radio<String>(
                value: language['subtitle']!,
                groupValue: selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value!;
                  });
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: selectedLanguage == language['subtitle']
                    ? BorderSide(color: Colors.blue, width: 2)
                    : BorderSide.none,
              ),
              tileColor: selectedLanguage == language['subtitle']
                  ? Colors.blue.shade50
                  : Colors.white,
            );
          },
        ),
      ),
    );
  }
}
