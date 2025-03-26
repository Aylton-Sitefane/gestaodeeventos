import 'package:flutter/material.dart';

import '../../../../components/constants.dart';

class EventListWidget extends StatelessWidget {
  const EventListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          EventItem(
            image: 'assets/images/logo_isu.png',
            press: () {},
          ),
          EventItem(
            image: 'assets/images/logo_isu.png',
            press: () {},
          ),
          EventItem(
            image: 'assets/images/logo_isu.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  const EventItem({
    super.key,
    required this.image,
    this.press,
  });
  final String image;
  final dynamic press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: EdgeInsets.only(
          left: KdefaultPadding,
          top: KdefaultPadding / 2,
          bottom: KdefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
