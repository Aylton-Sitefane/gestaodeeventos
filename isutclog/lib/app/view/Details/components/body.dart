import 'package:flutter/material.dart';
import 'package:isutclog/app/view/Details/components/image_and_card_section.dart';
import 'package:isutclog/app/view/Details/components/participate_and_description_section.dart';
import 'package:isutclog/app/view/Details/components/title_and_location_section.dart';
import 'package:isutclog/components/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
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
          ParticipateAndDescriptionSeaction(),
          SizedBox(
            height: KdefaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
