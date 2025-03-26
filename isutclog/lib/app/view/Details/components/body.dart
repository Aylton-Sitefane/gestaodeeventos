import 'package:flutter/material.dart';
import 'package:isutclog/app/view/Details/components/image_and_card_section.dart';
import 'package:isutclog/app/view/Details/components/title_and_location_section.dart';
import 'package:isutclog/components/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndCardSection(),
          TitleAndLocationSection(
            title: 'Feira Educa',
            institution: 'ISUTC',
            location: 'MAPUTO',
          ),
          SizedBox(
            height: KdefaultPadding,
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
