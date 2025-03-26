import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';


class IconCard extends StatelessWidget {
  const IconCard(
    {
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(KdefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: Colors.lightBlueAccent,
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: Icon(icon),
    );
  }
}
