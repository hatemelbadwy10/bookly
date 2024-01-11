import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_cashed_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key,required this.bookModel  });
final  BookModel bookModel;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kBookDetailsView,
          extra: bookModel
          );
        },
        child: Row(
          children: [
            CustomCashedImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail, bookModel: bookModel,),
            const SizedBox(
              width: 10,
            ),
             Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   bookModel.volumeInfo.title!,
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                   bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                   Row(
                    children: [
                      const Text(
                        'free',
                        style: Styles.textStyle20,
                      ),
                      const Spacer(),
                      RatingBookItem(bookRating: bookModel.volumeInfo.maturityRating!,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
