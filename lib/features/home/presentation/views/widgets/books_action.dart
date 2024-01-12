import 'package:bookly/core/function/lauch_custom_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: CustomButton(

            textColor: Colors.black,
            backGroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),

            text: 'free',

          ),
        ),
        Expanded(
            child: CustomButton(
              onPressed: () async {
               launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
          textColor: Colors.white,
          backGroundColor: const Color(
            0xFFEF8262,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          text: getText(bookModel),

        ))
      ],
    );
  }
}
String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Available';
  } else {
    return 'Preview';
  }
}

