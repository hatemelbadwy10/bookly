import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchBooks() async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBook();
    result.fold((failure) {
      emit(SearchFailure(failure.errMassage));

    }, (books)
    {
      emit(SearchSuccess(books));
    }
    );
  }
}
