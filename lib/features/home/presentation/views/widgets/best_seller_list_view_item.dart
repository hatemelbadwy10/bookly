import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width * .3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potterand',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      '19.9',
                      style: Styles.textStyle20,
                    ),
                    Spacer(),
                    RatingBookItem()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
