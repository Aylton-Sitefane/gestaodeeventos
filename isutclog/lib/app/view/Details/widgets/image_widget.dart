import 'package:flutter/material.dart';



class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(63),
          bottomLeft: Radius.circular(63),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60,
            color: Colors.lightBlueAccent,
          ),
        ],
        image: DecorationImage(
          image: AssetImage("assets/images/logo_isu.png"),
          fit: BoxFit.cover,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}

