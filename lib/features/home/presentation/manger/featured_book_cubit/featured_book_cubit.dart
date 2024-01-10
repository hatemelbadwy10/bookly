// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async{
    emit(FeaturedBooksLoading());
    var result = await  homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMassage));

    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });

}
}
