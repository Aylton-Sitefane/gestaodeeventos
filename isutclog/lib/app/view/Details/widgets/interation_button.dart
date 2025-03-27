import 'package:flutter/material.dart';
import 'package:isutclog/app/view/Details/components/comment_view.dart';
import 'package:isutclog/app/view/Details/widgets/icon_card.dart';
import 'package:isutclog/components/constants.dart';

class InterationSectionButtons extends StatefulWidget {
  const InterationSectionButtons({
    super.key,
  });

  @override
  State<InterationSectionButtons> createState() =>
      _InterationSectionButtonsState();
}

class _InterationSectionButtonsState extends State<InterationSectionButtons> {
  void _openCommentScreen() {
    showModalBottomSheet(context: context, builder: (ctx) => CommentView());
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: KdefaultPadding * 3,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.symmetric(horizontal: KdefaultPadding),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            Spacer(),
            GestureDetector(
              child: IconCard(
                icon: Icons.share,
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: IconCard(
                icon: Icons.message_outlined,
              ),
              onTap: () {
                _openCommentScreen();
              },
            ),
            GestureDetector(
              child: IconCard(
                icon: Icons.heart_broken_outlined,
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: IconCard(
                icon: Icons.share_location_outlined,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
