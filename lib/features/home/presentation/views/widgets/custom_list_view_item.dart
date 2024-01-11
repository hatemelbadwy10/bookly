import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_cashed_image.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl, required this.bookModel});
  final String imageUrl;
    final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomCashedImage(imageUrl: imageUrl, bookModel: bookModel,);
  }
}
