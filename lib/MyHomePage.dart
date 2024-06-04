import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Home.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterSplashScreen.scale(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A237E), // Dark Blue
              Colors.blue,   // Dark Blue

            ],
          ),
          childWidget: SizedBox(
            height: 155,
            child: Image.asset("assets/images/logo.png"),
          ),
          duration: const Duration(milliseconds: 3500),
          animationDuration: const Duration(milliseconds: 1000),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: const Home(),
        ),
    );
  }
}
