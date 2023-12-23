import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
class RatingBookItem extends StatelessWidget {
   const RatingBookItem({super.key,  this.mainAxisAlignment= MainAxisAlignment.start});
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),),
        SizedBox(
          width: 6.3,

        ),
        Text('4.8',
          style: Styles.textStyle14,
        )


      ],

    );
  }
}