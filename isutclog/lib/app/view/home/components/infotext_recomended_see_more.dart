import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';

class InfoTextRecomendedSeeMore extends StatelessWidget {
  final String text;
  final String? textButton;
  final dynamic press;

   const InfoTextRecomendedSeeMore({
    super.key,
    required this.text,
     required this.press, this.textButton,
  });

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
            onPressed: press,
            child: Text(
              textButton!,
            ),
          )
        ],
      ),
    );
  }
}
