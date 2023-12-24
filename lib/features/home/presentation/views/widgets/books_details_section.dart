import 'package:bookly/features/home/presentation/views/widgets/rating_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'custom_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .26),
          child: const CustomListViewItem(),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard kipling',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const RatingBookItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
