import 'package:flutter/material.dart';
import 'package:isutclog/app/view/home/components/event_grid_view.dart';
import 'package:isutclog/app/view/home/components/event_list_widget.dart';
import 'package:isutclog/app/view/home/widgets/infotext_recomended_see_more.dart';
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
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventGridView(title: recomendedText,),
                ),
              );
            },
          ),
          RecomendedEvent(),
          InfoTextRecomendedSeeMore(
            text: culturalEventsText,
            textButton: seeMoreText,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventGridView(title: culturalEventsText,),
                ),
              );
            },
          ),
          EventListWidget(),
          InfoTextRecomendedSeeMore(
            text: academicsEventsText,
            textButton: seeMoreText,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventGridView(title: academicsEventsText,),
                ),
              );
            },
          ),
          EventListWidget(),
          InfoTextRecomendedSeeMore(
            text: cientificsEventsText,
            textButton: seeMoreText,
            press: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventGridView(title: cientificsEventsText,),
                ),
              ); 
            },
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
