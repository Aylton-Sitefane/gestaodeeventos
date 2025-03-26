import 'package:flutter/material.dart';
import 'package:isutclog/app/view/Details/components/icon_card.dart';
import 'package:isutclog/components/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: KdefaultPadding * 3,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: KdefaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      Spacer(),
                      IconCard(icon: Icons.share),
                      IconCard(icon: Icons.message_outlined),
                      IconCard(icon: Icons.heart_broken_outlined),
                      IconCard(icon: Icons.share_location_outlined),
                    ],
                  ),
                ),
              ),
              Container(
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
