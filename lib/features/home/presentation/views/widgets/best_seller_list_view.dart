import 'package:bookly/core/widgets/custom_error_massage.dart';
import 'package:bookly/features/home/presentation/manger/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NewestBooksCubit,NewestBooksState>(builder: (context,state)
    {
      if(state is NewestBooksSuccess)
        {
          return ListView.builder(
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {


                return  BestSellerListViewItem( bookModel: state.books[index],);
              }
          );
        }
      else if(state is NewestBooksFailure){
        return CustomErrorMassage(errMassage: state.errMassage);

      }
      else {
        return const Center(
          child: CircularProgressIndicator(),

        );
      }
    }
    );

  }
}
