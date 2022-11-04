import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/weather_controller.dart';
import 'package:weather_app/screen/splash_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherController>(
      create: (context) => WeatherController(),
       child: MaterialApp(debugShowCheckedModeBanner: false,
          title: 'Weathree',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen()
        
    
    ));
  }
}

