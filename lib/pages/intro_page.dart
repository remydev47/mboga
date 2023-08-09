import 'package:flutter/material.dart';
import 'package:mboga/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          //logo or Welcome Image
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0,
              right: 80.0,
              bottom: 40.0,
              top: 160.0,
            ),
            child: Image.asset(
              'assets/images/hand1.jpg',
              height: 240,
              width: 240,
            ),
          ),
          //Text 1
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We Deliver Groceries At Your Door Step",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          //Text 2
          Text(
            "Mboga Gives you Fresh Vegetables and Fruits.Order Fresh Items from Mboga",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          Spacer(),
          //button or Login
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Spacer()
        ],
      ),
    );
  }
}
