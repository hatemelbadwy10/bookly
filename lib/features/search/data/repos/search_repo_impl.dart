import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiServices apiServices;
  String? category;

  SearchRepoImpl( this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBook(category) async{
    try {

      var data =await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=${category ?? 'proggraming' }&sorting=newest');
      List <BookModel> books=[];
      for(var items in data['items']){
        books.add(BookModel.fromJson(items));


      }
      return right(books);
    }  on Exception catch (e) {
  if (e is DioException) {
  return left(ServerFailure.fromDioException(e));

  }
  return left( ServerFailure(e.toString()));
  }



  }

}