import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backGroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: '19.9',
          ),
        ),
        Expanded(
            child: CustomButton(
          textColor: Colors.white,
          backGroundColor: Color(
            0xFFEF8262,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          text: 'Book Review',
        ))
      ],
    );
  }
}
