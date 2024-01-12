import 'package:bookly/core/widgets/custom_error_massage.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children: [
          const CustomSearchTextField(),
          Expanded(

              child: SearchResultListView(bookModel: bookModel,)
          ),
        ],
      ),
    );
  }
}

