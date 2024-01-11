import 'package:bookly/core/widgets/custom_error_massage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manger/featured_book_cubit/featured_book_cubit.dart';
import '../../manger/featured_book_cubit/featured_book_state.dart';
import 'custom_list_view_item.dart';
class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBooksState>(
      builder: (context, state) {
       if(state is FeaturedBooksSuccess){
         print(state);
         return SizedBox(
           height: MediaQuery.of(context).size.height * .3,

           child: ListView.builder(
             itemCount: state.books.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {

                 return  CustomListViewItem( imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail, bookModel: state.books[index],);
               }),
         );
       }
       else if(state is FeaturedBooksFailure){
         print(state);
         return CustomErrorMassage(errMassage: state.errMessage);
       }
       else if(state is FeaturedBooksLoading){
         print(state);
         return const Center(child: CircularProgressIndicator());
       }
       else {
         print(state);
         return const Center(child: Text('iam donkey'));

       }
      },
    );
  }
}
