import 'package:flutter/material.dart';
import 'package:flutter_recommendation/view/main_screen.dart';
import 'package:flutter_recommendation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
