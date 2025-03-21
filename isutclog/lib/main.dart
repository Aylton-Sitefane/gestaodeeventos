import 'package:flutter/material.dart';
import 'package:isutclog/splash_intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'Isutclog',
      debugShowCheckedModeBanner: false,
      home: SplashIntro(),
    );
  }
}

