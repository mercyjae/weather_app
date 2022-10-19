import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () {Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1823),
      body: Align(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset('assets/images/logo.svg'),
          const SizedBox(
            height: 25,
          ),
          Text('Weather X',
              style: GoogleFonts.syncopate(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }
}
