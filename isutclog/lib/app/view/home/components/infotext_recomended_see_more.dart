import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';

class InfoTextRecomendedSeeMore extends StatelessWidget {
  final String text;
  final String textButton;

  const InfoTextRecomendedSeeMore({
    Key? key,
    required this.text,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              textButton,
            ),
          )
        ],
      ),
    );
  }
}
