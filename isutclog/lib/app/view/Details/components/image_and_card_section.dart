import 'package:flutter/material.dart';
import 'package:isutclog/app/view/Details/widgets/image_widget.dart';
import 'package:isutclog/app/view/Details/widgets/interation_button.dart';
import 'package:isutclog/components/constants.dart';

class ImageAndCardSection extends StatelessWidget {
  const ImageAndCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: KdefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            InterationSectionButtons(),
            ImageWidget(),
          ],
        ),
      ),
    );
  }
}
