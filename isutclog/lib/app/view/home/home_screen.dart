import 'package:flutter/material.dart';
import 'package:isutclog/app/view/home/components/mybody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarHome(),
      body: Mybody(),
    );
  }

  AppBar myAppBarHome() {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      elevation: 0,
      leading: GestureDetector(
        child: Icon(Icons.density_large_outlined),
      onTap: () {
        
      },),
    );
  }
}
