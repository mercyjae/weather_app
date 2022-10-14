import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/ui/home.dart';
import 'package:weather_app/ui/welcome_screen.dart';
import 'package:weather_app/utils/locator_setup.dart';
import 'package:weather_app/weather_controller.dart';

void main() {
  locateSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Weather>(
      create: (context) => Weather(),
       child: MaterialApp(debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
        
            primarySwatch: Colors.blue,
          ),
          home: const WeatherPage()
        
    
    ));
  }
}

