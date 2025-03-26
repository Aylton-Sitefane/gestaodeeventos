import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';


class RecomendedEvent extends StatelessWidget {
  const RecomendedEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RecomendedEvemtCard(
            image: logoImage,
            curse: "LECC",
            imagetitle: "ISutc",
            press: () {},
            title: "Summerchild",
          ),
          RecomendedEvemtCard(
            image: logoImage,
            curse: "LECC",
            imagetitle: "ISutc",
            press: () {},
            title: "Summerchild",
          ),
          RecomendedEvemtCard(
            image: logoImage,
            curse: "LECC",
            imagetitle: "ISutc",
            press: () {},
            title: "Summerchild",
          ),
        ],
      ),
    );
  }
}

class RecomendedEvemtCard extends StatelessWidget {
  const RecomendedEvemtCard({
    super.key,
    required this.image,
    required this.title,
    required this.curse,
    required this.imagetitle,
    required this.press,
  });
  final Image image;
  final String imagetitle, title, curse;
  final dynamic press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: KdefaultPadding,
        top: KdefaultPadding / 2,
        bottom: KdefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          image,
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(KdefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 30),
                      blurRadius: 50,
                      color: Colors.lightBlueAccent.withOpacity(0.23),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${imagetitle.toUpperCase()}\n",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "${title.toUpperCase()}\n",
                          style: TextStyle(
                            color: Colors.cyan,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "${curse.toUpperCase()}\n",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
