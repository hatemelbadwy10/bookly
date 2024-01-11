// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manger/similar_book_cubit/similar_books_state.dart';
class SimilarBookCubit extends Cubit<SimilarBooksState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBooksLoading());
    var result = await  homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMassage));

    }, (books) {
      emit(SimilarBooksSuccess(books));
    });

  }
}
