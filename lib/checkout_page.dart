import 'package:flutter/material.dart';
import 'package:shop_app_flutter/earn_redeem.dart';
import 'package:shop_app_flutter/edit_profile.dart';
import 'package:shop_app_flutter/example_wishlist.dart';
import 'package:shop_app_flutter/newpage.dart';
import 'package:shop_app_flutter/saved_adresses.dart';
import 'package:shop_app_flutter/select_language.dart';
import 'package:shop_app_flutter/settings.dart';
import 'package:shop_app_flutter/wishlist.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      const Color.fromARGB(255, 48, 35, 18)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Yo b boy Rishu !",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.star_border_outlined,
                                color: Colors.amber),
                            label: Text("Top Member"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black54,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.amber),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.bolt, color: Colors.amber),
                            label: Text("12 SuperCoins"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black54,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.yellow),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrdersPage()),
                    );
                  },
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 24,
                  ),
                  label: Text(
                    "Oders      >",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Colors.yellowAccent),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Wishlist()));
                  },
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 24,
                  ),
                  label: Text(
                    "Wislist        >",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.yellowAccent),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.wallet_giftcard,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 24,
                  ),
                  label: Text(
                    "Coupons >",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.yellowAccent),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.help_center_outlined,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 22,
                  ),
                  label: Text(
                    "Help Center >",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Colors.yellowAccent),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.account_balance, color: Colors.black),
              title: Text(
                'Payments & Currencies',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'View balance and saved payment menthods',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.redeem_outlined, color: Colors.black),
              title: Text(
                'Earn & Redeem',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Scan coupons,view prizes and earn rewards',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EarnRedeem()));
              },
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_outlined, color: Colors.black),
              title: Text(
                'Edit Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Name,mobile number and email id',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                );
              },
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading:
                  Icon(Icons.favorite_border_outlined, color: Colors.black),
              title: Text(
                'Wishlist',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Your most loved styles',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExampleWishlist()));
              },
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.black),
              title: Text(
                'Saved Adresses',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '+ Add a new address',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SavedAdresses()));
              },
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.language_outlined, color: Colors.black),
              title: Text(
                'Selected Language',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Choose language',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectLanguage(),
                    ));
              },
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.star_purple500_outlined, color: Colors.black),
              title: Text(
                'All in One Suggests',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '100% personalized feed just for you',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 11,
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Manage Notification',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            SizedBox(
              height: 18,
            ),
            ListTile(
              title: Text(
                'FAQs',
              ),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text(
                'About US',
              ),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text(
                'TERMS OF USE',
              ),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text(
                'PRIVACY POLICY',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(36),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.deepOrange),
                  foregroundColor: Colors.deepOrange,
                ),
                child: Text(
                  "LOG OUT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
