
import 'dart:async';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
    Navigator.of(context).pushNamed('/draw');
    });
    return Scaffold(
      backgroundColor: Color(0xff153448),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/cv.png'),
            ),
          ),
        ),
      ),
    );
  }
}
