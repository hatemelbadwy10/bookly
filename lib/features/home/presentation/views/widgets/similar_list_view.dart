import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomListViewItem(imageUrl: 'state.books[index].volumeInfo.imageLinks.thumbnail',);
          }),
    );
  }
}
