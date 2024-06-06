import 'package:flutter/material.dart';
import 'package:untitled/Translate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A237E), // Dark Blue
              Colors.blue, // Light Blue
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 75),
            Image.asset(
              "assets/images/homelogo.png",
              height: 180,
              width: 190,
            ),
            SizedBox(height: 40),
            const Text(
              'Translate\nNow\nAnytime\nAnywhere',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Translate()),
                );
              },
              icon: Icon(Icons.play_arrow),
              label: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/1.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
