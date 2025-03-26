import 'package:flutter/material.dart';
import 'package:isutclog/app/view/home/components/event_list_widget.dart';
import 'package:isutclog/app/view/home/components/infotext_recomended_see_more.dart';
import 'package:isutclog/app/view/home/components/recomended_event.dart';
import 'package:isutclog/components/constants.dart';
import 'header_with_searchbar.dart';

class Mybody extends StatelessWidget {
  const Mybody({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderSearchBox(),
          InfoTextRecomendedSeeMore(
            text: recomendedText,
            textButton: seeMoreText,
            press: () {},
          ),
          RecomendedEvent(),
          InfoTextRecomendedSeeMore(
            text: culturalEventsText,
            textButton: seeMoreText,
            press: () {},
          ),
          EventListWidget(),
          InfoTextRecomendedSeeMore(
            text: academicsEventsText,
            textButton: seeMoreText,
            press: () {},
          ),
          EventListWidget(),
          InfoTextRecomendedSeeMore(
            text: cientificsEventsText,
            textButton: seeMoreText,
            press: () {},
          ),
          EventListWidget(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
