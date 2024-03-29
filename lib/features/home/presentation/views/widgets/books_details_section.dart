import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'custom_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .26),
          child:   CustomListViewItem(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail, bookModel: bookModel,),
        ),
        const SizedBox(
          height: 40,
        ),
         Text(
         bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         RatingBookItem(
          mainAxisAlignment: MainAxisAlignment.center, bookRating:bookModel.volumeInfo.maturityRating!,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(bookModel: bookModel,),
      ],
    );
  }
}
