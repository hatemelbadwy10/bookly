import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_book_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async{
    emit(NewestBooksLoading());
    var result= await homeRepo.fetchNewestBooks();
    result.fold((failure){
      emit(NewestBooksFailure(failure.errMassage));

    } , (books){
      emit(NewestBooksSuccess(books));

    } );
  }
}
