import 'package:bookly/core/widgets/custom_error_massage.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_cashed_image.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart'
;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
  builder: (context, state) {
    if(state is SearchSuccess){
      return    ListView.builder(
        padding: EdgeInsets.zero,
        itemCount:state.books.length ,
        itemBuilder: (context, index) {
          return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child:
              //CustomCashedImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail, bookModel: bookModel)
            BestSellerListViewItem(bookModel: state.books[index],),
          );
        },
      );
    }
    else if(state is SearchFailure ){
      return CustomErrorMassage(errMassage: state.errMasage);

    }
    else if(state is SearchLoading){
      return const Center(child: CircularProgressIndicator());
    }
    else{
      return Container();
    }

  },
);
  }


}
