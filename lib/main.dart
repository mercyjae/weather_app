import 'package:flutter/material.dart';
import 'package:weather_app/ui/welcome_screen.dart';
import 'package:weather_app/utils/locator_setup.dart';

void main() {
  locateSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen()
    );
  }
}

