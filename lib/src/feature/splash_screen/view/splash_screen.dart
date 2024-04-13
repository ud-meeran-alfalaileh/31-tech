import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/feature/navbar/view/main/navbar_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate after 2 seconds
    Timer(const Duration(seconds: 1), () {
      Get.to(const NavBarPage(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 900));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: context.screenWidth,
              height: context.screenHeight,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/img/SplashBG.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: context.screenWidth,
              height: context.screenHeight,
              color: Colors.white.withOpacity(0.8),
              child: Center(
                  child: Image.asset(
                "assets/icons/Logo.png",
                width: context.screenWidth * 0.25,
                height: context.screenHeight,
              )),
            ),
          ],
        ), // Display splash screen image
      ),
    );
  }
}
