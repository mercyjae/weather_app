import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/weather_controller.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WeatherController>(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FutureBuilder(
            future: provider.getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    Image.asset('assets/images/profile.png')
                                        .image),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 150,
                              child: TextField(
                                  controller: provider.searchInput,
                                  onEditingComplete: () {
                                    provider.searchCity();
                                  },
                                  autofocus: false,
                                  cursorColor: const Color(0xFF36424D),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: SizedBox(
                                        width: 0,
                                        height: 0,
                                        child: Icon(
                                          Icons.expand_more,
                                          color: Color(0xFF36424D),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1)))),
                            )
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Feels Like A good\ntime to ride a bike',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xFF09151E),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25)),
                                const SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: SvgPicture.asset(
                                      'assets/images/bicycle.svg'),
                                )
                              ]),
                          const SizedBox(
                            height: 30,
                          ),
                          CircleAvatar(
                            radius: 150,
                            backgroundColor: const Color(0xFF09151E),
                            child: Stack(children: [
                              Positioned(
                                  top: 25,
                                  left: 3,
                                  child:
                                      Image.asset('assets/images/cloud.png')),
                              Positioned(
                                  top: 25,
                                  right: 3,
                                  child:
                                      Image.asset('assets/images/rainny.png')),
                              Center(
                                  child: Stack(children: [
                                Container(
                                    margin: const EdgeInsets.only(left: 8.0),
                                    child: Text("Today's Like",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16))),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 30.0, top: 15.0),
                                  child: Wrap(
                                      direction: Axis.horizontal,
                                      children: [
                                        Text('   ${provider.model.feelsLike}',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 30)),
                                        const Text(
                                          'o',
                                          style: TextStyle(fontFeatures: [
                                            FontFeature.subscripts()
                                          ], color: Colors.white),
                                        ),
                                      ]),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 35.0, top: 20.0),
                                  child: Image.network(
                                      'http://openweathermap.org/img/wn/${provider.model.icon}@2x.png'),
                                )
                              ])),
                              Positioned(
                                  top: 120,
                                  bottom: 0,
                                  left: 200,
                                  child:
                                      Image.asset('assets/images/clear.png')),
                              Positioned(
                                  top: 120,
                                  bottom: 0,
                                  right: 190,
                                  child:
                                      Image.asset('assets/images/windy.png')),
                              Positioned(
                                  top: 140,
                                  left: 20,
                                  right: 0,
                                  child:
                                      Image.asset('assets/images/thunder.png'))
                            ]),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Today’s Mood',
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xFF09151E),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                    Text('Very Good',
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xFF09151E),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Tomorrow’s Mood',
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xFF09151E),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                    Text('Excellent ',
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xFF09151E),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12))
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                );
              }

              return const Center(
                child: CircularProgressIndicator(color: Colors.black),
              );
            })
        );
  }
}
