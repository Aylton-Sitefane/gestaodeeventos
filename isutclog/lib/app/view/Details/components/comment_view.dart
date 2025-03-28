import 'package:flutter/material.dart';

class CommentView extends StatelessWidget {
  const CommentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text('Comment'),
        ],
      ),
    );
  }
}