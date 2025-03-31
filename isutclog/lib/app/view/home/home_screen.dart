import 'package:flutter/material.dart';
import 'package:isutclog/app/view/home/components/mybody.dart';
import 'package:isutclog/components/constants.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: drawerIcon,
        ),
        onTap: () {},
      ),
    );
  }
}

