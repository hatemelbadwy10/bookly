import 'package:bookly/core/widgets/custom_error_massage.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manger/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/similar_book_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: BlocBuilder<SimilarBookCubit, SimilarBooksState>(
  builder: (context, state) {

    if (state is SimilarBooksSuccess) {
      return
        ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              print(state);
              return  CustomListViewItem(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail, bookModel: bookModel,);
            }
            );
    }
    else if (state is SimilarBooksFailure) {
      print(state);
      return CustomErrorMassage(errMassage: state.errMessage);

    }
    else {
      print(state);
      return const Center(child: CircularProgressIndicator());

    }
  },
),
    );
  }
}
