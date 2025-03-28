import 'package:flutter/material.dart';
import 'package:isutclog/components/constants.dart';

class TitleAndLocationSection extends StatelessWidget {
  const TitleAndLocationSection({
    super.key,
    required this.title,
    required this.location,
    required this.institution,
  });
  final String title, location, institution;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "$location\n",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "$institution\n",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.lightBlue),
          ),
        ],
      ),
    );
  }
}
