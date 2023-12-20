import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedListView(),
        Text('Best Seller', style: Styles.textStyle18,),
        BestSellerListViewItem()
      ],

    );
  }
}
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 120,
      child: Row(
        children: [
          Image.asset(AssetsData.testImage)
        ],
      ),
    );
  }
}

