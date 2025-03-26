import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
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
