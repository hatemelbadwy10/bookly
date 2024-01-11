import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingBookItem extends StatelessWidget {
  const RatingBookItem(

      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.bookRating});
  final MainAxisAlignment mainAxisAlignment;
  final String bookRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          bookRating,
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
