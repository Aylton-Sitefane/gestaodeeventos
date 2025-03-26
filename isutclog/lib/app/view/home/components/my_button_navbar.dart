import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: KdefaultPadding * 2,
        right: KdefaultPadding * 2,
        bottom: KdefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: Colors.lightBlueAccent.withOpacity(0.38),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
          ),
          
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.blueAccent,
            ),
          ),IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
