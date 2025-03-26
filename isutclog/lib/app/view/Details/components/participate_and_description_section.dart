import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';


class ParticipateAndDescriptionSeaction extends StatelessWidget {
  const ParticipateAndDescriptionSeaction({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            width: size.width / 2,
            height: 84,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  25,
                ),
              ),
            ),
            child: Center(
              child: Text(
                "Participar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: size.width / 2,
            height: 84,
            child: Center(
              child: Text(
                descriptionText,
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
