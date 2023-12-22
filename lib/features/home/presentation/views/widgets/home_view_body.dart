import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListView(),
              Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            //  BestSellerListView()
            ],
          ),
        )),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );

    /*,
    );*/
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics:  const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        });
  }
}
