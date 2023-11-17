import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linkedin/ui/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            color: const Color(0xff222222),
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            child: Center(
              child: Image(
                image: const AssetImage('assets/linkedin_logo.png'),
                width: MediaQuery.sizeOf(context).width * 0.4,
              ),
            ),
          ),
        ),
      );
}
