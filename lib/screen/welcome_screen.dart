import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset('assets/images/star.svg')),
          const SizedBox(
            height: 180,
          ),
          Text(
            'Let’s See\nThe ⭐\nWeather\nAround you',
            style: GoogleFonts.poppins(
                color: const Color(0xFF0C1823),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  primary: const Color(0xFF0C1823),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: Text("Let's check",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18)))
        ]),
      ),
    );
  }
}
