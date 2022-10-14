import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/weather_controller.dart';
import 'package:weather_app/utils/locator_setup.dart';
import 'screen/weather_screen.dart';

void main() {
  locateSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherController>(
      create: (context) => WeatherController(),
       child: MaterialApp(debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
        
            primarySwatch: Colors.blue,
          ),
          home:  WeatherScreen()
        
    
    ));
  }
}

