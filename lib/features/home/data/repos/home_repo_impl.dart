import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/api_services.dart';
class HomeRepoImpl implements HomeRepo{
 final ApiServices appServices ;

  HomeRepoImpl(this.appServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks()   async{
    try {
      var data= await appServices.get(  endPoint: 'volumes?Filtering=free-ebooks&q=proggraming&sorting=newest');
      List<BookModel> books =[];
      for( var items in data['items']){
        try{
          books.add(BookModel.fromJson(items));
          print('iam here');

        }
        catch (e) {
          books.add(BookModel.fromJson(items));
        }
          }
      return right(books);
    } on Exception catch (e) {
     if (e is DioException) {
       return left(ServerFailure.fromDioException(e));
       
     }
     return left( ServerFailure(e.toString()));
    }
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{

    try {
      var data= await appServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=programing&sorting=newest&');
      List<BookModel> books =[];
      for( var items in data['items']){
        books.add(BookModel.fromJson(items));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));

      }
      return left( ServerFailure(e.toString()));
    }
  }

}
